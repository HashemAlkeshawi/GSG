import 'package:first_app_gsg/FaceBook_UI/postRequist.dart';

List<Map<String, dynamic>> postsResponse = [
  {
    'user': {
      'name': 'hussam',
      'image':
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content':
          "this is my first post, i really love flutter and i want to be senior developer",
      'image': 'https://source.unsplash.com/random/200x401',
      'noLikes': 20
    }
  },
  {
    'user': {
      'name': 'momen',
      'image':
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello world",
      'image': 'https://source.unsplash.com/random/200x402',
      'noLikes': 20
    }
  },
  {
    'user': {
      'name': 'hashem',
      'image':
          'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
    },
    'post': {
      'content': "i love programming",
      'image': 'https://source.unsplash.com/random/200x403',
      'noLikes': 20
    }
  },
  {
    'user': {
      'name': 'farah',
      'image':
          'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=461&q=80'
    },
    'post': {
      'content': "welcome to gsk",
      'image': 'https://source.unsplash.com/random/201x400',
      'noLikes': 20
    }
  },
  {
    'user': {
      'name': 'rashed',
      'image':
          'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=461&q=80'
    },
    'post': {
      'content': "hello everyone",
      'image': 'https://source.unsplash.com/random/203x400',
      'noLikes': 20
    }
  }
];
List<Map<String, dynamic>> storyResponse = [
  {
    'user': {
      'name': 'hussam',
      'image':
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'story': {
      'image':
          'https://images.unsplash.com/photo-1469474968028-56623f02e42e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=874&q=80',
    }
  },
  {
    'user': {
      'name': 'momen',
      'image':
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'story': {
      'image':
          'https://images.unsplash.com/photo-1510784722466-f2aa9c52fff6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    }
  },
  {
    'user': {
      'name': 'hashem',
      'image':
          'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
    },
    'story': {
      'image':
          'https://images.unsplash.com/photo-1505144808419-1957a94ca61e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=326&q=80',
    }
  },
  {
    'user': {
      'name': 'farah',
      'image':
          'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=461&q=80'
    },
    'story': {
      'image':
          'https://images.unsplash.com/photo-1447752875215-b2761acb3c5d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    }
  },
  {
    'user': {
      'name': 'rashed',
      'image':
          'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'story': {
      'image': 'https://source.unsplash.com/random/200x400',
    }
  }
];

List<storyRequist> storyRequistsList =
    storyResponse.map((e) => storyRequist.fromJason(e)).toList();

List<postRequist> postRequistsList =
    postsResponse.map((e) => postRequist.fromJason(e)).toList();
