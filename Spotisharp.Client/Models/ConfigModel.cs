using System.Reflection;

namespace Spotisharp.Client.Models;

public class ConfigModel
{
    public UInt16 Port { get; set; } = 5001;
    public bool CheckUpdates { get; set; } = true;

    public int WorkersCount { get; set; } = 2;

    public string VersionControl { get; set; } = 
        Assembly.GetExecutingAssembly().GetName().Version!.ToString();

    public string MusicDirectory { get; set; } =
        Path.Join(Environment.GetFolderPath(Environment.SpecialFolder.MyMusic), "Spotisharp");

    public void EnsureDirsExist()
    {
        Directory.CreateDirectory(MusicDirectory);
    }
}
