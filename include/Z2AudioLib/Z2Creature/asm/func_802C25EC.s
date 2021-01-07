/* 802C25EC 002BF52C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802C25F0 002BF530  7C 08 02 A6 */ mflr r0
/* 802C25F4 002BF534  90 01 00 14 */ stw r0, 0x14(r1)
/* 802C25F8 002BF538  93 E1 00 0C */ stw r31, 0xc(r1)
/* 802C25FC 002BF53C  7C 7F 1B 78 */ mr r31, r3
/* 802C2600 002BF540  4B FF E9 C5 */ bl Z2CreatureEnemy_NS_deleteObject
/* 802C2604 002BF544  38 7F 00 A4 */ addi r3, r31, 0xa4
/* 802C2608 002BF548  4B FF B9 F1 */ bl Z2SoundObjBase_NS_deleteObject
/* 802C260C 002BF54C  38 7F 00 C4 */ addi r3, r31, 0xc4
/* 802C2610 002BF550  4B FF B9 E9 */ bl Z2SoundObjBase_NS_deleteObject
/* 802C2614 002BF554  38 7F 00 E4 */ addi r3, r31, 0xe4
/* 802C2618 002BF558  4B FF B9 E1 */ bl Z2SoundObjBase_NS_deleteObject
/* 802C261C 002BF55C  38 7F 01 04 */ addi r3, r31, 0x104
/* 802C2620 002BF560  4B FF B9 D9 */ bl Z2SoundObjBase_NS_deleteObject
/* 802C2624 002BF564  38 7F 01 24 */ addi r3, r31, 0x124
/* 802C2628 002BF568  4B FF B9 D1 */ bl Z2SoundObjBase_NS_deleteObject
/* 802C262C 002BF56C  38 7F 01 44 */ addi r3, r31, 0x144
/* 802C2630 002BF570  4B FF B9 C9 */ bl Z2SoundObjBase_NS_deleteObject
/* 802C2634 002BF574  38 7F 01 64 */ addi r3, r31, 0x164
/* 802C2638 002BF578  4B FF B9 C1 */ bl Z2SoundObjBase_NS_deleteObject
/* 802C263C 002BF57C  38 7F 01 84 */ addi r3, r31, 0x184
/* 802C2640 002BF580  4B FF B9 B9 */ bl Z2SoundObjBase_NS_deleteObject
/* 802C2644 002BF584  38 7F 01 A4 */ addi r3, r31, 0x1a4
/* 802C2648 002BF588  4B FF B9 B1 */ bl Z2SoundObjBase_NS_deleteObject
/* 802C264C 002BF58C  38 7F 01 C4 */ addi r3, r31, 0x1c4
/* 802C2650 002BF590  4B FF B9 A9 */ bl Z2SoundObjBase_NS_deleteObject
/* 802C2654 002BF594  38 7F 01 E4 */ addi r3, r31, 0x1e4
/* 802C2658 002BF598  4B FF B9 A1 */ bl Z2SoundObjBase_NS_deleteObject
/* 802C265C 002BF59C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 802C2660 002BF5A0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802C2664 002BF5A4  7C 08 03 A6 */ mtlr r0
/* 802C2668 002BF5A8  38 21 00 10 */ addi r1, r1, 0x10
/* 802C266C 002BF5AC  4E 80 00 20 */ blr