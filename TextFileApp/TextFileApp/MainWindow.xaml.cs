using System;
using System.IO;
using System.Threading;
using System.Windows;
using System.Windows.Threading;

namespace TextFileApp
{
    public partial class MainWindow : Window
    {
        private TextHolder textHolder = new TextHolder();
        private DispatcherTimer timer;

        public MainWindow()
        {
            InitializeComponent();
            SetupTimer();
        }

        private void SetupTimer()
        {
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(5);
            timer.Tick += Timer_Tick;
            timer.Start();
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            // Refresh TextBox_Read every 5 seconds
            TextBox_Read.Text = TextBox_Write.Text;
        }

        private void WriteToFile_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                // Setting the text via the class property
                textHolder.t1 = TextBox_Read.Text;

                // Create a directory if it does not exist
                string directoryPath = @"C:\TEST";
                if (!Directory.Exists(directoryPath))
                {
                    Directory.CreateDirectory(directoryPath);
                }

                // Write to file
                string filePath = Path.Combine(directoryPath, "Test.txt");
                File.WriteAllText(filePath, textHolder.t1);

                MessageBox.Show("Text successfully written to file!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error writing to file: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}