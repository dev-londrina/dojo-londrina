import test from 'ava';
import {VCS} from './lib/vcs';

test('Empty input', t => {
  let vcs = new VCS();
  t.is(vcs.trackedAndIgnored(), 0);
  t.is(vcs.untrackedAndNotIgnored(), 0);
  t.end();
});

test('Minimum input', t => {
  let vcs = new VCS(1);
  vcs.addIgnoredFiles([1]);
  vcs.addTrackedFiles([1]);
  t.is(vcs.trackedAndIgnored(), 1);
  t.is(vcs.untrackedAndNotIgnored(), 0);
  t.end();
});

test('Minimum untrackedAndNotIgnored', t => {
  let vcs = new VCS(3);
  vcs.addIgnoredFiles([1]);
  vcs.addTrackedFiles([2]);
  t.is(vcs.trackedAndIgnored(), 0);
  t.is(vcs.untrackedAndNotIgnored(), 1);
  t.end();
});

test('With 7 files, 4 tracked and 6 ignored', t => {
  let vcs = new VCS(7);
  vcs.addIgnoredFiles([1, 4, 6, 7]);
  vcs.addTrackedFiles([1, 2, 3, 4, 6, 7]);
  t.is(vcs.trackedAndIgnored(), 4);
  t.is(vcs.untrackedAndNotIgnored(), 1);
  t.end();
});

test('With 4 files, 2 tracked and 2 ignored', t => {
  let vcs = new VCS(4);
  vcs.addIgnoredFiles([1, 4]);
  vcs.addTrackedFiles([3, 4]);
  t.is(vcs.trackedAndIgnored(), 1);
  t.is(vcs.untrackedAndNotIgnored(), 1);
  t.end();
});
