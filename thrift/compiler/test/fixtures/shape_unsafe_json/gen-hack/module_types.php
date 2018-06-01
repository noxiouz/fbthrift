<?hh // strict
/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

/**
 * Original thrift struct:-
 * A
 */
class A implements \IThriftStruct, \IThriftShapishStruct {
  use \ThriftSerializationTrait;

  public static dict<int, dict<string, mixed>> $_TSPEC = dict[
    1 => dict[
      'var' => 'a',
      'type' => \TType::STRING,
      ],
    ];
  public static Map<string, int> $_TFIELDMAP = Map {
    'a' => 1,
  };
  const type TShape = shape(
    'a' => string,
    ...
  );
  const int STRUCTURAL_ID = 7939807933046472325;
  /**
   * Original thrift field:-
   * 1: string a
   */
  public string $a;

  public function __construct(?string $a = null  ) {
    if ($a === null) {
      $this->a = '';
    } else {
      $this->a = $a;
    }
  }

  public function getName(): string {
    return 'A';
  }

  public static function __jsonArrayToShape(
    dict<arraykey, mixed> $json_data,
  ): ?self::TShape {
    $shape_data = $json_data;


    return /* HH_IGNORE_ERROR[4110] */ $shape_data;
  }

  public static function __fromShape(self::TShape $shape): this {
    $me = /* HH_IGNORE_ERROR[4060] */ new static();
    $me->a = $shape['a'];
    return $me;
  }

  public function __toShape(): self::TShape {
    return shape(
      'a' => $this->a,
    );
  }
}

/**
 * Original thrift struct:-
 * B
 */
class B implements \IThriftStruct, \IThriftShapishStruct {
  use \ThriftSerializationTrait;

  public static dict<int, dict<string, mixed>> $_TSPEC = dict[
    1 => dict[
      'var' => 'just_an_A',
      'type' => \TType::STRUCT,
      'class' => 'A',
      ],
    2 => dict[
      'var' => 'set_of_i32',
      'type' => \TType::SET,
      'etype' => \TType::I32,
      'elem' => dict[
        'type' => \TType::I32,
        ],
        'format' => 'collection',
      ],
    3 => dict[
      'var' => 'list_of_i32',
      'type' => \TType::LST,
      'etype' => \TType::I32,
      'elem' => dict[
        'type' => \TType::I32,
        ],
        'format' => 'collection',
      ],
    4 => dict[
      'var' => 'list_of_string',
      'type' => \TType::LST,
      'etype' => \TType::STRING,
      'elem' => dict[
        'type' => \TType::STRING,
        ],
        'format' => 'collection',
      ],
    5 => dict[
      'var' => 'map_of_string_to_i32',
      'type' => \TType::MAP,
      'ktype' => \TType::STRING,
      'vtype' => \TType::I32,
      'key' => dict[
        'type' => \TType::STRING,
      ],
      'val' => dict[
        'type' => \TType::I32,
        ],
        'format' => 'collection',
      ],
    6 => dict[
      'var' => 'map_of_string_to_A',
      'type' => \TType::MAP,
      'ktype' => \TType::STRING,
      'vtype' => \TType::STRUCT,
      'key' => dict[
        'type' => \TType::STRING,
      ],
      'val' => dict[
        'type' => \TType::STRUCT,
        'class' => 'A',
        ],
        'format' => 'collection',
      ],
    7 => dict[
      'var' => 'map_of_string_to_list_of_i32',
      'type' => \TType::MAP,
      'ktype' => \TType::STRING,
      'vtype' => \TType::LST,
      'key' => dict[
        'type' => \TType::STRING,
      ],
      'val' => dict[
        'type' => \TType::LST,
        'etype' => \TType::I32,
        'elem' => dict[
          'type' => \TType::I32,
          ],
          'format' => 'collection',
        ],
        'format' => 'collection',
      ],
    8 => dict[
      'var' => 'map_of_string_to_list_of_A',
      'type' => \TType::MAP,
      'ktype' => \TType::STRING,
      'vtype' => \TType::LST,
      'key' => dict[
        'type' => \TType::STRING,
      ],
      'val' => dict[
        'type' => \TType::LST,
        'etype' => \TType::STRUCT,
        'elem' => dict[
          'type' => \TType::STRUCT,
          'class' => 'A',
          ],
          'format' => 'collection',
        ],
        'format' => 'collection',
      ],
    9 => dict[
      'var' => 'map_of_string_to_set_of_i32',
      'type' => \TType::MAP,
      'ktype' => \TType::STRING,
      'vtype' => \TType::SET,
      'key' => dict[
        'type' => \TType::STRING,
      ],
      'val' => dict[
        'type' => \TType::SET,
        'etype' => \TType::I32,
        'elem' => dict[
          'type' => \TType::I32,
          ],
          'format' => 'collection',
        ],
        'format' => 'collection',
      ],
    10 => dict[
      'var' => 'map_of_string_to_map_of_string_to_i32',
      'type' => \TType::MAP,
      'ktype' => \TType::STRING,
      'vtype' => \TType::MAP,
      'key' => dict[
        'type' => \TType::STRING,
      ],
      'val' => dict[
        'type' => \TType::MAP,
        'ktype' => \TType::STRING,
        'vtype' => \TType::I32,
        'key' => dict[
          'type' => \TType::STRING,
        ],
        'val' => dict[
          'type' => \TType::I32,
          ],
          'format' => 'collection',
        ],
        'format' => 'collection',
      ],
    11 => dict[
      'var' => 'map_of_string_to_map_of_string_to_A',
      'type' => \TType::MAP,
      'ktype' => \TType::STRING,
      'vtype' => \TType::MAP,
      'key' => dict[
        'type' => \TType::STRING,
      ],
      'val' => dict[
        'type' => \TType::MAP,
        'ktype' => \TType::STRING,
        'vtype' => \TType::STRUCT,
        'key' => dict[
          'type' => \TType::STRING,
        ],
        'val' => dict[
          'type' => \TType::STRUCT,
          'class' => 'A',
          ],
          'format' => 'collection',
        ],
        'format' => 'collection',
      ],
    12 => dict[
      'var' => 'list_of_set_of_i32',
      'type' => \TType::LST,
      'etype' => \TType::SET,
      'elem' => dict[
        'type' => \TType::SET,
        'etype' => \TType::I32,
        'elem' => dict[
          'type' => \TType::I32,
          ],
          'format' => 'collection',
        ],
        'format' => 'collection',
      ],
    13 => dict[
      'var' => 'list_of_map_of_string_to_list_of_A',
      'type' => \TType::LST,
      'etype' => \TType::MAP,
      'elem' => dict[
        'type' => \TType::MAP,
        'ktype' => \TType::STRING,
        'vtype' => \TType::LST,
        'key' => dict[
          'type' => \TType::STRING,
        ],
        'val' => dict[
          'type' => \TType::LST,
          'etype' => \TType::STRUCT,
          'elem' => dict[
            'type' => \TType::STRUCT,
            'class' => 'A',
            ],
            'format' => 'collection',
          ],
          'format' => 'collection',
        ],
        'format' => 'collection',
      ],
    14 => dict[
      'var' => 'list_of_map_of_string_to_A',
      'type' => \TType::LST,
      'etype' => \TType::MAP,
      'elem' => dict[
        'type' => \TType::MAP,
        'ktype' => \TType::STRING,
        'vtype' => \TType::STRUCT,
        'key' => dict[
          'type' => \TType::STRING,
        ],
        'val' => dict[
          'type' => \TType::STRUCT,
          'class' => 'A',
          ],
          'format' => 'collection',
        ],
        'format' => 'collection',
      ],
    15 => dict[
      'var' => 'list_of_self',
      'type' => \TType::LST,
      'etype' => \TType::STRUCT,
      'elem' => dict[
        'type' => \TType::STRUCT,
        'class' => 'B',
        ],
        'format' => 'collection',
      ],
    16 => dict[
      'var' => 'map_of_string_to_self',
      'type' => \TType::MAP,
      'ktype' => \TType::STRING,
      'vtype' => \TType::STRUCT,
      'key' => dict[
        'type' => \TType::STRING,
      ],
      'val' => dict[
        'type' => \TType::STRUCT,
        'class' => 'B',
        ],
        'format' => 'collection',
      ],
    51 => dict[
      'var' => 'optional_just_an_A',
      'type' => \TType::STRUCT,
      'class' => 'A',
      ],
    52 => dict[
      'var' => 'optional_set_of_i32',
      'type' => \TType::SET,
      'etype' => \TType::I32,
      'elem' => dict[
        'type' => \TType::I32,
        ],
        'format' => 'collection',
      ],
    53 => dict[
      'var' => 'optional_list_of_i32',
      'type' => \TType::LST,
      'etype' => \TType::I32,
      'elem' => dict[
        'type' => \TType::I32,
        ],
        'format' => 'collection',
      ],
    54 => dict[
      'var' => 'optional_list_of_string',
      'type' => \TType::LST,
      'etype' => \TType::STRING,
      'elem' => dict[
        'type' => \TType::STRING,
        ],
        'format' => 'collection',
      ],
    55 => dict[
      'var' => 'optional_map_of_string_to_i32',
      'type' => \TType::MAP,
      'ktype' => \TType::STRING,
      'vtype' => \TType::I32,
      'key' => dict[
        'type' => \TType::STRING,
      ],
      'val' => dict[
        'type' => \TType::I32,
        ],
        'format' => 'collection',
      ],
    56 => dict[
      'var' => 'optional_map_of_string_to_A',
      'type' => \TType::MAP,
      'ktype' => \TType::STRING,
      'vtype' => \TType::STRUCT,
      'key' => dict[
        'type' => \TType::STRING,
      ],
      'val' => dict[
        'type' => \TType::STRUCT,
        'class' => 'A',
        ],
        'format' => 'collection',
      ],
    57 => dict[
      'var' => 'optional_map_of_string_to_list_of_i32',
      'type' => \TType::MAP,
      'ktype' => \TType::STRING,
      'vtype' => \TType::LST,
      'key' => dict[
        'type' => \TType::STRING,
      ],
      'val' => dict[
        'type' => \TType::LST,
        'etype' => \TType::I32,
        'elem' => dict[
          'type' => \TType::I32,
          ],
          'format' => 'collection',
        ],
        'format' => 'collection',
      ],
    58 => dict[
      'var' => 'optional_map_of_string_to_list_of_A',
      'type' => \TType::MAP,
      'ktype' => \TType::STRING,
      'vtype' => \TType::LST,
      'key' => dict[
        'type' => \TType::STRING,
      ],
      'val' => dict[
        'type' => \TType::LST,
        'etype' => \TType::STRUCT,
        'elem' => dict[
          'type' => \TType::STRUCT,
          'class' => 'A',
          ],
          'format' => 'collection',
        ],
        'format' => 'collection',
      ],
    59 => dict[
      'var' => 'optional_map_of_string_to_set_of_i32',
      'type' => \TType::MAP,
      'ktype' => \TType::STRING,
      'vtype' => \TType::SET,
      'key' => dict[
        'type' => \TType::STRING,
      ],
      'val' => dict[
        'type' => \TType::SET,
        'etype' => \TType::I32,
        'elem' => dict[
          'type' => \TType::I32,
          ],
          'format' => 'collection',
        ],
        'format' => 'collection',
      ],
    ];
  public static Map<string, int> $_TFIELDMAP = Map {
    'just_an_A' => 1,
    'set_of_i32' => 2,
    'list_of_i32' => 3,
    'list_of_string' => 4,
    'map_of_string_to_i32' => 5,
    'map_of_string_to_A' => 6,
    'map_of_string_to_list_of_i32' => 7,
    'map_of_string_to_list_of_A' => 8,
    'map_of_string_to_set_of_i32' => 9,
    'map_of_string_to_map_of_string_to_i32' => 10,
    'map_of_string_to_map_of_string_to_A' => 11,
    'list_of_set_of_i32' => 12,
    'list_of_map_of_string_to_list_of_A' => 13,
    'list_of_map_of_string_to_A' => 14,
    'list_of_self' => 15,
    'map_of_string_to_self' => 16,
    'optional_just_an_A' => 51,
    'optional_set_of_i32' => 52,
    'optional_list_of_i32' => 53,
    'optional_list_of_string' => 54,
    'optional_map_of_string_to_i32' => 55,
    'optional_map_of_string_to_A' => 56,
    'optional_map_of_string_to_list_of_i32' => 57,
    'optional_map_of_string_to_list_of_A' => 58,
    'optional_map_of_string_to_set_of_i32' => 59,
  };
  const type TShape = shape(
    ?'just_an_A' => ?A::TShape,
    'set_of_i32' => dict<int, bool>,
    'list_of_i32' => vec<int>,
    'list_of_string' => vec<string>,
    'map_of_string_to_i32' => dict<string, int>,
    'map_of_string_to_A' => dict<string, A::TShape>,
    'map_of_string_to_list_of_i32' => dict<string, vec<int>>,
    'map_of_string_to_list_of_A' => dict<string, vec<A::TShape>>,
    'map_of_string_to_set_of_i32' => dict<string, dict<int, bool>>,
    'map_of_string_to_map_of_string_to_i32' => dict<string, dict<string, int>>,
    'map_of_string_to_map_of_string_to_A' => dict<string, dict<string, A::TShape>>,
    'list_of_set_of_i32' => vec<dict<int, bool>>,
    'list_of_map_of_string_to_list_of_A' => vec<dict<string, vec<A::TShape>>>,
    'list_of_map_of_string_to_A' => vec<dict<string, A::TShape>>,
    'list_of_self' => vec<B::TShape>,
    'map_of_string_to_self' => dict<string, B::TShape>,
    ?'optional_just_an_A' => ?A::TShape,
    ?'optional_set_of_i32' => ?dict<int, bool>,
    ?'optional_list_of_i32' => ?vec<int>,
    ?'optional_list_of_string' => ?vec<string>,
    ?'optional_map_of_string_to_i32' => ?dict<string, int>,
    ?'optional_map_of_string_to_A' => ?dict<string, A::TShape>,
    ?'optional_map_of_string_to_list_of_i32' => ?dict<string, vec<int>>,
    ?'optional_map_of_string_to_list_of_A' => ?dict<string, vec<A::TShape>>,
    ?'optional_map_of_string_to_set_of_i32' => ?dict<string, dict<int, bool>>,
    ...
  );
  const int STRUCTURAL_ID = 5337530759322918209;
  /**
   * Original thrift field:-
   * 1: struct module.A just_an_A
   */
  public ?A $just_an_A;
  /**
   * Original thrift field:-
   * 2: set<i32> set_of_i32
   */
  public Set<int> $set_of_i32;
  /**
   * Original thrift field:-
   * 3: list<i32> list_of_i32
   */
  public Vector<int> $list_of_i32;
  /**
   * Original thrift field:-
   * 4: list<string> list_of_string
   */
  public Vector<string> $list_of_string;
  /**
   * Original thrift field:-
   * 5: map<string, i32> map_of_string_to_i32
   */
  public Map<string, int> $map_of_string_to_i32;
  /**
   * Original thrift field:-
   * 6: map<string, struct module.A> map_of_string_to_A
   */
  public Map<string, A> $map_of_string_to_A;
  /**
   * Original thrift field:-
   * 7: map<string, list<i32>> map_of_string_to_list_of_i32
   */
  public Map<string, Vector<int>> $map_of_string_to_list_of_i32;
  /**
   * Original thrift field:-
   * 8: map<string, list<struct module.A>> map_of_string_to_list_of_A
   */
  public Map<string, Vector<A>> $map_of_string_to_list_of_A;
  /**
   * Original thrift field:-
   * 9: map<string, set<i32>> map_of_string_to_set_of_i32
   */
  public Map<string, Set<int>> $map_of_string_to_set_of_i32;
  /**
   * Original thrift field:-
   * 10: map<string, map<string, i32>> map_of_string_to_map_of_string_to_i32
   */
  public Map<string, Map<string, int>> $map_of_string_to_map_of_string_to_i32;
  /**
   * Original thrift field:-
   * 11: map<string, map<string, struct module.A>> map_of_string_to_map_of_string_to_A
   */
  public Map<string, Map<string, A>> $map_of_string_to_map_of_string_to_A;
  /**
   * Original thrift field:-
   * 12: list<set<i32>> list_of_set_of_i32
   */
  public Vector<Set<int>> $list_of_set_of_i32;
  /**
   * Original thrift field:-
   * 13: list<map<string, list<struct module.A>>> list_of_map_of_string_to_list_of_A
   */
  public Vector<Map<string, Vector<A>>> $list_of_map_of_string_to_list_of_A;
  /**
   * Original thrift field:-
   * 14: list<map<string, struct module.A>> list_of_map_of_string_to_A
   */
  public Vector<Map<string, A>> $list_of_map_of_string_to_A;
  /**
   * Original thrift field:-
   * 15: list<struct module.B> list_of_self
   */
  public Vector<B> $list_of_self;
  /**
   * Original thrift field:-
   * 16: map<string, struct module.B> map_of_string_to_self
   */
  public Map<string, B> $map_of_string_to_self;
  /**
   * Original thrift field:-
   * 51: struct module.A optional_just_an_A
   */
  public ?A $optional_just_an_A;
  /**
   * Original thrift field:-
   * 52: set<i32> optional_set_of_i32
   */
  public ?Set<int> $optional_set_of_i32;
  /**
   * Original thrift field:-
   * 53: list<i32> optional_list_of_i32
   */
  public ?Vector<int> $optional_list_of_i32;
  /**
   * Original thrift field:-
   * 54: list<string> optional_list_of_string
   */
  public ?Vector<string> $optional_list_of_string;
  /**
   * Original thrift field:-
   * 55: map<string, i32> optional_map_of_string_to_i32
   */
  public ?Map<string, int> $optional_map_of_string_to_i32;
  /**
   * Original thrift field:-
   * 56: map<string, struct module.A> optional_map_of_string_to_A
   */
  public ?Map<string, A> $optional_map_of_string_to_A;
  /**
   * Original thrift field:-
   * 57: map<string, list<i32>> optional_map_of_string_to_list_of_i32
   */
  public ?Map<string, Vector<int>> $optional_map_of_string_to_list_of_i32;
  /**
   * Original thrift field:-
   * 58: map<string, list<struct module.A>> optional_map_of_string_to_list_of_A
   */
  public ?Map<string, Vector<A>> $optional_map_of_string_to_list_of_A;
  /**
   * Original thrift field:-
   * 59: map<string, set<i32>> optional_map_of_string_to_set_of_i32
   */
  public ?Map<string, Set<int>> $optional_map_of_string_to_set_of_i32;

  public function __construct(?A $just_an_A = null, ?Set<int> $set_of_i32 = null, ?Vector<int> $list_of_i32 = null, ?Vector<string> $list_of_string = null, ?Map<string, int> $map_of_string_to_i32 = null, ?Map<string, A> $map_of_string_to_A = null, ?Map<string, Vector<int>> $map_of_string_to_list_of_i32 = null, ?Map<string, Vector<A>> $map_of_string_to_list_of_A = null, ?Map<string, Set<int>> $map_of_string_to_set_of_i32 = null, ?Map<string, Map<string, int>> $map_of_string_to_map_of_string_to_i32 = null, ?Map<string, Map<string, A>> $map_of_string_to_map_of_string_to_A = null, ?Vector<Set<int>> $list_of_set_of_i32 = null, ?Vector<Map<string, Vector<A>>> $list_of_map_of_string_to_list_of_A = null, ?Vector<Map<string, A>> $list_of_map_of_string_to_A = null, ?Vector<B> $list_of_self = null, ?Map<string, B> $map_of_string_to_self = null, ?A $optional_just_an_A = null, ?Set<int> $optional_set_of_i32 = null, ?Vector<int> $optional_list_of_i32 = null, ?Vector<string> $optional_list_of_string = null, ?Map<string, int> $optional_map_of_string_to_i32 = null, ?Map<string, A> $optional_map_of_string_to_A = null, ?Map<string, Vector<int>> $optional_map_of_string_to_list_of_i32 = null, ?Map<string, Vector<A>> $optional_map_of_string_to_list_of_A = null, ?Map<string, Set<int>> $optional_map_of_string_to_set_of_i32 = null  ) {
    $this->just_an_A = $just_an_A;
    if ($set_of_i32 === null) {
      $this->set_of_i32 = Set {};
    } else {
      $this->set_of_i32 = $set_of_i32;
    }
    if ($list_of_i32 === null) {
      $this->list_of_i32 = Vector {};
    } else {
      $this->list_of_i32 = $list_of_i32;
    }
    if ($list_of_string === null) {
      $this->list_of_string = Vector {};
    } else {
      $this->list_of_string = $list_of_string;
    }
    if ($map_of_string_to_i32 === null) {
      $this->map_of_string_to_i32 = Map {};
    } else {
      $this->map_of_string_to_i32 = $map_of_string_to_i32;
    }
    if ($map_of_string_to_A === null) {
      $this->map_of_string_to_A = Map {};
    } else {
      $this->map_of_string_to_A = $map_of_string_to_A;
    }
    if ($map_of_string_to_list_of_i32 === null) {
      $this->map_of_string_to_list_of_i32 = Map {};
    } else {
      $this->map_of_string_to_list_of_i32 = $map_of_string_to_list_of_i32;
    }
    if ($map_of_string_to_list_of_A === null) {
      $this->map_of_string_to_list_of_A = Map {};
    } else {
      $this->map_of_string_to_list_of_A = $map_of_string_to_list_of_A;
    }
    if ($map_of_string_to_set_of_i32 === null) {
      $this->map_of_string_to_set_of_i32 = Map {};
    } else {
      $this->map_of_string_to_set_of_i32 = $map_of_string_to_set_of_i32;
    }
    if ($map_of_string_to_map_of_string_to_i32 === null) {
      $this->map_of_string_to_map_of_string_to_i32 = Map {};
    } else {
      $this->map_of_string_to_map_of_string_to_i32 = $map_of_string_to_map_of_string_to_i32;
    }
    if ($map_of_string_to_map_of_string_to_A === null) {
      $this->map_of_string_to_map_of_string_to_A = Map {};
    } else {
      $this->map_of_string_to_map_of_string_to_A = $map_of_string_to_map_of_string_to_A;
    }
    if ($list_of_set_of_i32 === null) {
      $this->list_of_set_of_i32 = Vector {};
    } else {
      $this->list_of_set_of_i32 = $list_of_set_of_i32;
    }
    if ($list_of_map_of_string_to_list_of_A === null) {
      $this->list_of_map_of_string_to_list_of_A = Vector {};
    } else {
      $this->list_of_map_of_string_to_list_of_A = $list_of_map_of_string_to_list_of_A;
    }
    if ($list_of_map_of_string_to_A === null) {
      $this->list_of_map_of_string_to_A = Vector {};
    } else {
      $this->list_of_map_of_string_to_A = $list_of_map_of_string_to_A;
    }
    if ($list_of_self === null) {
      $this->list_of_self = Vector {};
    } else {
      $this->list_of_self = $list_of_self;
    }
    if ($map_of_string_to_self === null) {
      $this->map_of_string_to_self = Map {};
    } else {
      $this->map_of_string_to_self = $map_of_string_to_self;
    }
    $this->optional_just_an_A = $optional_just_an_A;
    $this->optional_set_of_i32 = $optional_set_of_i32;
    $this->optional_list_of_i32 = $optional_list_of_i32;
    $this->optional_list_of_string = $optional_list_of_string;
    $this->optional_map_of_string_to_i32 = $optional_map_of_string_to_i32;
    $this->optional_map_of_string_to_A = $optional_map_of_string_to_A;
    $this->optional_map_of_string_to_list_of_i32 = $optional_map_of_string_to_list_of_i32;
    $this->optional_map_of_string_to_list_of_A = $optional_map_of_string_to_list_of_A;
    $this->optional_map_of_string_to_set_of_i32 = $optional_map_of_string_to_set_of_i32;
  }

  public function getName(): string {
    return 'B';
  }

  public static function __jsonArrayToShape(
    dict<arraykey, mixed> $json_data,
  ): ?self::TShape {
    $shape_data = $json_data;

    $shape_data['just_an_A'] = A::__jsonArrayToShape(/* HH_IGNORE_ERROR[4110] */ $shape_data['just_an_A']);

    $the_set2 = dict[];
    foreach (/* HH_IGNORE_ERROR[4110] */ $shape_data['set_of_i32'] as $key0 => $shape_data1) {
      $the_set2[$shape_data1] = true;
    }
    $shape_data['set_of_i32'] = $the_set2;

    foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['list_of_i32'] as $key3 => $value4) {
      /* HH_IGNORE_ERROR[4005] */
      /* HH_IGNORE_ERROR[4063] */
      $shape_data['list_of_i32'][$key3] = $value4;
    }

    foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['list_of_string'] as $key5 => $value6) {
      /* HH_IGNORE_ERROR[4005] */
      /* HH_IGNORE_ERROR[4063] */
      $shape_data['list_of_string'][$key5] = $value6;
    }

    foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['map_of_string_to_i32'] as $key7 => $value8) {
      /* HH_IGNORE_ERROR[4005] */
      /* HH_IGNORE_ERROR[4063] */
      $shape_data['map_of_string_to_i32'][$key7] = $value8;
    }

    foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['map_of_string_to_A'] as $key9 => $value10) {
      $value10 = A::__jsonArrayToShape(/* HH_IGNORE_ERROR[4110] */ $value10);
      /* HH_IGNORE_ERROR[4005] */
      /* HH_IGNORE_ERROR[4063] */
      $shape_data['map_of_string_to_A'][$key9] = $value10;
    }

    foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['map_of_string_to_list_of_i32'] as $key11 => $value12) {
      foreach (/* HH_IGNORE_ERROR[4110] */$value12 as $key13 => $value14) {
        /* HH_IGNORE_ERROR[4005] */
        /* HH_IGNORE_ERROR[4063] */
        $value12[$key13] = $value14;
      }
      /* HH_IGNORE_ERROR[4005] */
      /* HH_IGNORE_ERROR[4063] */
      $shape_data['map_of_string_to_list_of_i32'][$key11] = $value12;
    }

    foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['map_of_string_to_list_of_A'] as $key15 => $value16) {
      foreach (/* HH_IGNORE_ERROR[4110] */$value16 as $key17 => $value18) {
        $value18 = A::__jsonArrayToShape(/* HH_IGNORE_ERROR[4110] */ $value18);
        /* HH_IGNORE_ERROR[4005] */
        /* HH_IGNORE_ERROR[4063] */
        $value16[$key17] = $value18;
      }
      /* HH_IGNORE_ERROR[4005] */
      /* HH_IGNORE_ERROR[4063] */
      $shape_data['map_of_string_to_list_of_A'][$key15] = $value16;
    }

    foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['map_of_string_to_set_of_i32'] as $key19 => $value20) {
      $the_set23 = dict[];
      foreach (/* HH_IGNORE_ERROR[4110] */ $value20 as $key21 => $shape_data22) {
        $the_set23[$shape_data22] = true;
      }
      $value20 = $the_set23;
      /* HH_IGNORE_ERROR[4005] */
      /* HH_IGNORE_ERROR[4063] */
      $shape_data['map_of_string_to_set_of_i32'][$key19] = $value20;
    }

    foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['map_of_string_to_map_of_string_to_i32'] as $key24 => $value25) {
      foreach (/* HH_IGNORE_ERROR[4110] */$value25 as $key26 => $value27) {
        /* HH_IGNORE_ERROR[4005] */
        /* HH_IGNORE_ERROR[4063] */
        $value25[$key26] = $value27;
      }
      /* HH_IGNORE_ERROR[4005] */
      /* HH_IGNORE_ERROR[4063] */
      $shape_data['map_of_string_to_map_of_string_to_i32'][$key24] = $value25;
    }

    foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['map_of_string_to_map_of_string_to_A'] as $key28 => $value29) {
      foreach (/* HH_IGNORE_ERROR[4110] */$value29 as $key30 => $value31) {
        $value31 = A::__jsonArrayToShape(/* HH_IGNORE_ERROR[4110] */ $value31);
        /* HH_IGNORE_ERROR[4005] */
        /* HH_IGNORE_ERROR[4063] */
        $value29[$key30] = $value31;
      }
      /* HH_IGNORE_ERROR[4005] */
      /* HH_IGNORE_ERROR[4063] */
      $shape_data['map_of_string_to_map_of_string_to_A'][$key28] = $value29;
    }

    foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['list_of_set_of_i32'] as $key32 => $value33) {
      $the_set36 = dict[];
      foreach (/* HH_IGNORE_ERROR[4110] */ $value33 as $key34 => $shape_data35) {
        $the_set36[$shape_data35] = true;
      }
      $value33 = $the_set36;
      /* HH_IGNORE_ERROR[4005] */
      /* HH_IGNORE_ERROR[4063] */
      $shape_data['list_of_set_of_i32'][$key32] = $value33;
    }

    foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['list_of_map_of_string_to_list_of_A'] as $key37 => $value38) {
      foreach (/* HH_IGNORE_ERROR[4110] */$value38 as $key39 => $value40) {
        foreach (/* HH_IGNORE_ERROR[4110] */$value40 as $key41 => $value42) {
          $value42 = A::__jsonArrayToShape(/* HH_IGNORE_ERROR[4110] */ $value42);
          /* HH_IGNORE_ERROR[4005] */
          /* HH_IGNORE_ERROR[4063] */
          $value40[$key41] = $value42;
        }
        /* HH_IGNORE_ERROR[4005] */
        /* HH_IGNORE_ERROR[4063] */
        $value38[$key39] = $value40;
      }
      /* HH_IGNORE_ERROR[4005] */
      /* HH_IGNORE_ERROR[4063] */
      $shape_data['list_of_map_of_string_to_list_of_A'][$key37] = $value38;
    }

    foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['list_of_map_of_string_to_A'] as $key43 => $value44) {
      foreach (/* HH_IGNORE_ERROR[4110] */$value44 as $key45 => $value46) {
        $value46 = A::__jsonArrayToShape(/* HH_IGNORE_ERROR[4110] */ $value46);
        /* HH_IGNORE_ERROR[4005] */
        /* HH_IGNORE_ERROR[4063] */
        $value44[$key45] = $value46;
      }
      /* HH_IGNORE_ERROR[4005] */
      /* HH_IGNORE_ERROR[4063] */
      $shape_data['list_of_map_of_string_to_A'][$key43] = $value44;
    }

    foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['list_of_self'] as $key47 => $value48) {
      $value48 = B::__jsonArrayToShape(/* HH_IGNORE_ERROR[4110] */ $value48);
      /* HH_IGNORE_ERROR[4005] */
      /* HH_IGNORE_ERROR[4063] */
      $shape_data['list_of_self'][$key47] = $value48;
    }

    foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['map_of_string_to_self'] as $key49 => $value50) {
      $value50 = B::__jsonArrayToShape(/* HH_IGNORE_ERROR[4110] */ $value50);
      /* HH_IGNORE_ERROR[4005] */
      /* HH_IGNORE_ERROR[4063] */
      $shape_data['map_of_string_to_self'][$key49] = $value50;
    }

    $shape_data['optional_just_an_A'] = A::__jsonArrayToShape(/* HH_IGNORE_ERROR[4110] */ $shape_data['optional_just_an_A']);

    if (!is_null($shape_data['optional_set_of_i32'])) {
      $the_set53 = dict[];
      foreach (/* HH_IGNORE_ERROR[4110] */ $shape_data['optional_set_of_i32'] as $key51 => $shape_data52) {
        $the_set53[$shape_data52] = true;
      }
      $shape_data['optional_set_of_i32'] = $the_set53;
    }

    if (!is_null($shape_data['optional_list_of_i32'])) {
      foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['optional_list_of_i32'] as $key54 => $value55) {
        /* HH_IGNORE_ERROR[4005] */
        /* HH_IGNORE_ERROR[4063] */
        $shape_data['optional_list_of_i32'][$key54] = $value55;
      }
    }

    if (!is_null($shape_data['optional_list_of_string'])) {
      foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['optional_list_of_string'] as $key56 => $value57) {
        /* HH_IGNORE_ERROR[4005] */
        /* HH_IGNORE_ERROR[4063] */
        $shape_data['optional_list_of_string'][$key56] = $value57;
      }
    }

    if (!is_null($shape_data['optional_map_of_string_to_i32'])) {
      foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['optional_map_of_string_to_i32'] as $key58 => $value59) {
        /* HH_IGNORE_ERROR[4005] */
        /* HH_IGNORE_ERROR[4063] */
        $shape_data['optional_map_of_string_to_i32'][$key58] = $value59;
      }
    }

    if (!is_null($shape_data['optional_map_of_string_to_A'])) {
      foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['optional_map_of_string_to_A'] as $key60 => $value61) {
        $value61 = A::__jsonArrayToShape(/* HH_IGNORE_ERROR[4110] */ $value61);
        /* HH_IGNORE_ERROR[4005] */
        /* HH_IGNORE_ERROR[4063] */
        $shape_data['optional_map_of_string_to_A'][$key60] = $value61;
      }
    }

    if (!is_null($shape_data['optional_map_of_string_to_list_of_i32'])) {
      foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['optional_map_of_string_to_list_of_i32'] as $key62 => $value63) {
        foreach (/* HH_IGNORE_ERROR[4110] */$value63 as $key64 => $value65) {
          /* HH_IGNORE_ERROR[4005] */
          /* HH_IGNORE_ERROR[4063] */
          $value63[$key64] = $value65;
        }
        /* HH_IGNORE_ERROR[4005] */
        /* HH_IGNORE_ERROR[4063] */
        $shape_data['optional_map_of_string_to_list_of_i32'][$key62] = $value63;
      }
    }

    if (!is_null($shape_data['optional_map_of_string_to_list_of_A'])) {
      foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['optional_map_of_string_to_list_of_A'] as $key66 => $value67) {
        foreach (/* HH_IGNORE_ERROR[4110] */$value67 as $key68 => $value69) {
          $value69 = A::__jsonArrayToShape(/* HH_IGNORE_ERROR[4110] */ $value69);
          /* HH_IGNORE_ERROR[4005] */
          /* HH_IGNORE_ERROR[4063] */
          $value67[$key68] = $value69;
        }
        /* HH_IGNORE_ERROR[4005] */
        /* HH_IGNORE_ERROR[4063] */
        $shape_data['optional_map_of_string_to_list_of_A'][$key66] = $value67;
      }
    }

    if (!is_null($shape_data['optional_map_of_string_to_set_of_i32'])) {
      foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['optional_map_of_string_to_set_of_i32'] as $key70 => $value71) {
        $the_set74 = dict[];
        foreach (/* HH_IGNORE_ERROR[4110] */ $value71 as $key72 => $shape_data73) {
          $the_set74[$shape_data73] = true;
        }
        $value71 = $the_set74;
        /* HH_IGNORE_ERROR[4005] */
        /* HH_IGNORE_ERROR[4063] */
        $shape_data['optional_map_of_string_to_set_of_i32'][$key70] = $value71;
      }
    }

    return /* HH_IGNORE_ERROR[4110] */ $shape_data;
  }

  public static function __fromShape(self::TShape $shape): this {
    $me = /* HH_IGNORE_ERROR[4060] */ new static();
    $me->just_an_A = Shapes::idx($shape, 'just_an_A') === null ? null : A::__fromShape(nullthrows(Shapes::idx($shape, 'just_an_A')));
    $me->set_of_i32 = new Set(Keyset\keys($shape['set_of_i32']));
    $me->list_of_i32 = (new Vector($shape['list_of_i32']));
    $me->list_of_string = (new Vector($shape['list_of_string']));
    $me->map_of_string_to_i32 = (new Map($shape['map_of_string_to_i32']));
    $me->map_of_string_to_A = (new Map($shape['map_of_string_to_A']))->map(
      $val75 ==> A::__fromShape($val75),
    );
    $me->map_of_string_to_list_of_i32 = (new Map($shape['map_of_string_to_list_of_i32']))->map(
      $val76 ==> (new Vector($val76)),
    );
    $me->map_of_string_to_list_of_A = (new Map($shape['map_of_string_to_list_of_A']))->map(
      $val77 ==> (new Vector($val77))->map(
        $val78 ==> A::__fromShape($val78),
      ),
    );
    $me->map_of_string_to_set_of_i32 = (new Map($shape['map_of_string_to_set_of_i32']))->map(
      $val79 ==> new Set(Keyset\keys($val79)),
    );
    $me->map_of_string_to_map_of_string_to_i32 = (new Map($shape['map_of_string_to_map_of_string_to_i32']))->map(
      $val80 ==> (new Map($val80)),
    );
    $me->map_of_string_to_map_of_string_to_A = (new Map($shape['map_of_string_to_map_of_string_to_A']))->map(
      $val81 ==> (new Map($val81))->map(
        $val82 ==> A::__fromShape($val82),
      ),
    );
    $me->list_of_set_of_i32 = (new Vector($shape['list_of_set_of_i32']))->map(
      $val83 ==> new Set(Keyset\keys($val83)),
    );
    $me->list_of_map_of_string_to_list_of_A = (new Vector($shape['list_of_map_of_string_to_list_of_A']))->map(
      $val84 ==> (new Map($val84))->map(
        $val85 ==> (new Vector($val85))->map(
          $val86 ==> A::__fromShape($val86),
        ),
      ),
    );
    $me->list_of_map_of_string_to_A = (new Vector($shape['list_of_map_of_string_to_A']))->map(
      $val87 ==> (new Map($val87))->map(
        $val88 ==> A::__fromShape($val88),
      ),
    );
    $me->list_of_self = (new Vector($shape['list_of_self']))->map(
      $val89 ==> B::__fromShape($val89),
    );
    $me->map_of_string_to_self = (new Map($shape['map_of_string_to_self']))->map(
      $val90 ==> B::__fromShape($val90),
    );
    $me->optional_just_an_A = Shapes::idx($shape, 'optional_just_an_A') === null ? null : A::__fromShape(nullthrows(Shapes::idx($shape, 'optional_just_an_A')));
    $me->optional_set_of_i32 = Shapes::idx($shape, 'optional_set_of_i32') === null ? null : new Set(Keyset\keys(nullthrows(Shapes::idx($shape, 'optional_set_of_i32'))));
    $me->optional_list_of_i32 = Shapes::idx($shape, 'optional_list_of_i32') === null ? null : 
      (new Vector(Shapes::idx($shape, 'optional_list_of_i32')));
    $me->optional_list_of_string = Shapes::idx($shape, 'optional_list_of_string') === null ? null : 
      (new Vector(Shapes::idx($shape, 'optional_list_of_string')));
    $me->optional_map_of_string_to_i32 = Shapes::idx($shape, 'optional_map_of_string_to_i32') === null ? null : 
      (new Map(Shapes::idx($shape, 'optional_map_of_string_to_i32')));
    $me->optional_map_of_string_to_A = Shapes::idx($shape, 'optional_map_of_string_to_A') === null ? null : 
      (new Map(Shapes::idx($shape, 'optional_map_of_string_to_A')))->map(
        $val91 ==> A::__fromShape($val91),
      );
    $me->optional_map_of_string_to_list_of_i32 = Shapes::idx($shape, 'optional_map_of_string_to_list_of_i32') === null ? null : 
      (new Map(Shapes::idx($shape, 'optional_map_of_string_to_list_of_i32')))->map(
        $val92 ==> (new Vector($val92)),
      );
    $me->optional_map_of_string_to_list_of_A = Shapes::idx($shape, 'optional_map_of_string_to_list_of_A') === null ? null : 
      (new Map(Shapes::idx($shape, 'optional_map_of_string_to_list_of_A')))->map(
        $val93 ==> (new Vector($val93))->map(
          $val94 ==> A::__fromShape($val94),
        ),
      );
    $me->optional_map_of_string_to_set_of_i32 = Shapes::idx($shape, 'optional_map_of_string_to_set_of_i32') === null ? null : 
      (new Map(Shapes::idx($shape, 'optional_map_of_string_to_set_of_i32')))->map(
        $val95 ==> new Set(Keyset\keys($val95)),
      );
    return $me;
  }

  public function __toShape(): self::TShape {
    return shape(
      'just_an_A' => $this->just_an_A?->__toShape(),
      'set_of_i32' => darray(Dict\fill_keys($this->set_of_i32->toValuesArray(), true)),
      'list_of_i32' => $this->list_of_i32->toVec(),
      'list_of_string' => $this->list_of_string->toVec(),
      'map_of_string_to_i32' => $this->map_of_string_to_i32->toDict(),
      'map_of_string_to_A' => $this->map_of_string_to_A->map(
        $_val0 ==> $_val0->__toShape(),
      )->toDict(),
      'map_of_string_to_list_of_i32' => $this->map_of_string_to_list_of_i32->map(
        $_val0 ==> $_val0->toVec(),
      )->toDict(),
      'map_of_string_to_list_of_A' => $this->map_of_string_to_list_of_A->map(
        $_val0 ==> $_val0->map(
          $_val1 ==> $_val1->__toShape(),
        )->toVec(),
      )->toDict(),
      'map_of_string_to_set_of_i32' => $this->map_of_string_to_set_of_i32->map(
        $_val0 ==> darray(Dict\fill_keys($_val0, true)),
      )->toDict(),
      'map_of_string_to_map_of_string_to_i32' => $this->map_of_string_to_map_of_string_to_i32->map(
        $_val0 ==> $_val0->toDict(),
      )->toDict(),
      'map_of_string_to_map_of_string_to_A' => $this->map_of_string_to_map_of_string_to_A->map(
        $_val0 ==> $_val0->map(
          $_val1 ==> $_val1->__toShape(),
        )->toDict(),
      )->toDict(),
      'list_of_set_of_i32' => $this->list_of_set_of_i32->map(
        $_val0 ==> darray(Dict\fill_keys($_val0, true)),
      )->toVec(),
      'list_of_map_of_string_to_list_of_A' => $this->list_of_map_of_string_to_list_of_A->map(
        $_val0 ==> $_val0->map(
          $_val1 ==> $_val1->map(
            $_val2 ==> $_val2->__toShape(),
          )->toVec(),
        )->toDict(),
      )->toVec(),
      'list_of_map_of_string_to_A' => $this->list_of_map_of_string_to_A->map(
        $_val0 ==> $_val0->map(
          $_val1 ==> $_val1->__toShape(),
        )->toDict(),
      )->toVec(),
      'list_of_self' => $this->list_of_self->map(
        $_val0 ==> $_val0->__toShape(),
      )->toVec(),
      'map_of_string_to_self' => $this->map_of_string_to_self->map(
        $_val0 ==> $_val0->__toShape(),
      )->toDict(),
      'optional_just_an_A' => $this->optional_just_an_A?->__toShape(),
      'optional_set_of_i32' => $this->optional_set_of_i32 === null ? null : darray(Dict\fill_keys(nullthrows($this->optional_set_of_i32->toValuesArray()), true)),
      'optional_list_of_i32' => $this->optional_list_of_i32?->toVec(),
      'optional_list_of_string' => $this->optional_list_of_string?->toVec(),
      'optional_map_of_string_to_i32' => $this->optional_map_of_string_to_i32?->toDict(),
      'optional_map_of_string_to_A' => $this->optional_map_of_string_to_A?->map(
        $_val0 ==> $_val0->__toShape(),
      )?->toDict(),
      'optional_map_of_string_to_list_of_i32' => $this->optional_map_of_string_to_list_of_i32?->map(
        $_val0 ==> $_val0->toVec(),
      )?->toDict(),
      'optional_map_of_string_to_list_of_A' => $this->optional_map_of_string_to_list_of_A?->map(
        $_val0 ==> $_val0->map(
          $_val1 ==> $_val1->__toShape(),
        )->toVec(),
      )?->toDict(),
      'optional_map_of_string_to_set_of_i32' => $this->optional_map_of_string_to_set_of_i32?->map(
        $_val0 ==> darray(Dict\fill_keys($_val0, true)),
      )?->toDict(),
    );
  }
}

