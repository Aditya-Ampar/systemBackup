package config

type Config struct{
	Directories		[]DirectoryConfig	`yaml:"directories"`
	Watcher				WatcherConfig			`yaml:"watcher"`
}

type DirectoryConfig struct{
	Path					string						`yaml:"path"`
	Enabled				bool							`yaml:"enabled"`
}

type WatcherConfig struct {
	Debounce		string							`yaml:"debounce"`
}


