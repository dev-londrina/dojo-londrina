export class VCS {

  constructor(filesCount=0) {
    this.filesCount = filesCount;
    this.ignoredFiles = [];
    this.trackedFiles = [];
  }

  trackedAndIgnored() {
    return [...this.ignoredFiles].filter(x => this.trackedFiles.has(x)).length;
  }

  untrackedAndNotIgnored() {
    const s = new Set([...this.ignoredFiles, ...this.trackedFiles]).size;
    return this.filesCount - s;
  }

  addIgnoredFiles(ignoredFiles){
    this.ignoredFiles = new Set(ignoredFiles);
  }

  addTrackedFiles(trackedFiles){
    this.trackedFiles = new Set(trackedFiles);
  }

}
