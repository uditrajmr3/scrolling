import 'package:flutter/material.dart';

class Children extends StatefulWidget {
  const Children(
      {Key? key,
      this.text,
      this.nested = false,
      this.paged = false,
      this.controller,
      this.valueKey, this.primaryValue})
      : super(key: key);
  final String? text;
  final bool nested;
  final bool paged;
  final ScrollController? controller;
  final Key? valueKey;
  final bool? primaryValue;

  @override
  State<Children> createState() => _ChildrenState();
}

class _ChildrenState extends State<Children> {
  List<Key?> _myKeys = List.generate(34, (index) => null);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              for (int i = 0; i < 14; i++) {
                _myKeys[i] = null;
              }
              _myKeys[0] = widget.valueKey;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("key is set to 0"),
                ),
              );
            });
          },
          child: Container(
            key: _myKeys[0],
            height: 150.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            color: Colors.grey,
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                widget.text ?? "Single Child Scroll View",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: (widget.text != null) ? Colors.white : null,
                  fontSize: (widget.text != null) ? 20.0 : null,
                ),
              ),
            ),
          ),
        ),
        widget.nested
            ? SizedBox(
                height: 200.0,
                width: 220.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  // scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) => Container(
                    height: 100.0,
                    width: double.infinity,
                    margin: const EdgeInsets.all(10.0),
                    color: Colors.red,
                    child: Center(
                      child: Text("Single Child Scroll vIew $index"),
                    ),
                  ),
                ),
              )
            : const SizedBox(),
        // paged ? ListP,
        GestureDetector(
          onTap: () {
            setState(() {
              for (int i = 0; i < 14; i++) {
                _myKeys[i] = null;
              }
              _myKeys[1] = widget.valueKey;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("key is set to 1"),
                ),
              );
            });
          },
          child: Container(
            key: _myKeys[1],
            height: 100.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            color: Colors.grey,
            child: const Center(child: Text("Single Child Scroll vIew")),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              for (int i = 0; i < 14; i++) {
                _myKeys[i] = null;
              }
              _myKeys[2] = widget.valueKey;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("key is set to 2"),
                ),
              );
            });
          },
          child: Container(
            key: _myKeys[2],
            height: 100.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            color: Colors.grey,
            child: const Center(child: Text("Single Child Scroll vIew")),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              for (int i = 0; i < 14; i++) {
                _myKeys[i] = null;
              }
              _myKeys[3] = widget.valueKey;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("key is set to 3"),
                ),
              );
            });
          },
          child: Container(
            key: _myKeys[3],
            height: 100.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            color: Colors.grey,
            child: const Center(child: Text("Single Child Scroll vIew")),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              for (int i = 0; i < 14; i++) {
                _myKeys[i] = null;
              }
              _myKeys[4] = widget.valueKey;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("key is set to 4"),
                ),
              );
            });
          },
          child: Container(
            key: _myKeys[4],
            height: 100.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            color: Colors.grey,
            child: const Center(child: Text("Single Child Scroll vIew")),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              for (int i = 0; i < 14; i++) {
                _myKeys[i] = null;
              }
              _myKeys[5] = widget.valueKey;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("key is set to 5"),
                ),
              );
            });
          },
          child: Container(
            key: _myKeys[5],
            height: 100.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            color: Colors.grey,
            child: const Center(child: Text("Single Child Scroll vIew")),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              for (int i = 0; i < 14; i++) {
                _myKeys[i] = null;
              }
              _myKeys[6] = widget.valueKey;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("key is set to 6"),
                ),
              );
            });
          },
          child: Container(
            key: _myKeys[6],
            height: 100.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            color: Colors.grey,
            child: const Center(child: Text("Single Child Scroll vIew")),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              for (int i = 0; i < 14; i++) {
                _myKeys[i] = null;
              }
              _myKeys[7] = widget.valueKey;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("key is set to 7"),
                ),
              );
            });
          },
          child: Container(
            key: _myKeys[7],
            height: 100.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            color: Colors.grey,
            child: const Center(child: Text("Single Child Scroll vIew")),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              for (int i = 0; i < 14; i++) {
                _myKeys[i] = null;
              }
              _myKeys[8] = widget.valueKey;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("key is set to 8"),
                ),
              );
            });
          },
          child: Container(
            key: _myKeys[8],
            height: 100.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            color: Colors.grey,
            child: const Center(child: Text("Single Child Scroll vIew")),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              for (int i = 0; i < 14; i++) {
                _myKeys[i] = null;
              }
              _myKeys[9] = widget.valueKey;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("key is set to 9"),
                ),
              );
            });
          },
          child: Container(
            key: _myKeys[9],
            height: 100.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            color: Colors.grey,
            child: const Center(child: Text("Single Child Scroll vIew")),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              for (int i = 0; i < 14; i++) {
                _myKeys[i] = null;
              }
              _myKeys[10] = widget.valueKey;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("key is set to 10"),
                ),
              );
            });
          },
          child: Container(
            key: _myKeys[10],
            height: 100.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            color: Colors.grey,
            child: const Center(child: Text("Single Child Scroll vIew")),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              for (int i = 0; i < 14; i++) {
                _myKeys[i] = null;
              }
              _myKeys[11] = widget.valueKey;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("key is set to 11"),
                ),
              );
            });
          },
          child: Container(
            key: _myKeys[11],
            height: 100.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            color: Colors.grey,
            child: const Center(child: Text("Single Child Scroll vIew")),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              for (int i = 0; i < 14; i++) {
                _myKeys[i] = null;
              }
              _myKeys[12] = widget.valueKey;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("key is set to 12"),
                ),
              );
            });
          },
          child: Container(
            key: _myKeys[12],
            height: 100.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            color: Colors.grey,
            child: const Center(child: Text("Single Child Scroll vIew")),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              for (int i = 0; i < 14; i++) {
                _myKeys[i] = null;
              }
              _myKeys[13] = widget.valueKey;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("key is set to 13"),
                ),
              );
            });
          },
          child: Container(
            key: _myKeys[13],
            height: 100.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            color: Colors.grey,
            child: const Center(child: Text("Single Child Scroll vIew")),
          ),
        ),

        ListView.builder(
          itemCount: 20,
          shrinkWrap: true,
          primary: widget.primaryValue ?? false,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                for (int i = 0; i < 34; i++) {
                  _myKeys[i] = null;
                }
                _myKeys[index + 14] = widget.valueKey;

              });
            },
            child: Container(
            key: _myKeys[index + 14],
            height: 100.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            color: Colors.green,
            child: Center(child: Text("Single Child Scroll vIew $index")),
        ),
          ),),
      ],
    );
  }
}
