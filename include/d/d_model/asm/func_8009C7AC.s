/* 8009C7AC 000996EC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8009C7B0 000996F0  7C 08 02 A6 */ mflr r0
/* 8009C7B4 000996F4  90 01 00 14 */ stw r0, 0x14(r1)
/* 8009C7B8 000996F8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8009C7BC 000996FC  38 60 00 84 */ li r3, 0x84
/* 8009C7C0 00099700  48 23 24 8D */ bl __nw__FUl
/* 8009C7C4 00099704  7C 7F 1B 79 */ or. r31, r3, r3
/* 8009C7C8 00099708  41 82 00 28 */ beq lbl_8009C7F0
/*.global __ct__6dMdl_cFv*/
/* 8009C7CC 0009970C  3C 80 80 0A */ lis r4, __ct__6dMdl_cFv@ha
/*.global __ct__6dMdl_cFv*/
/* 8009C7D0 00099710  38 84 C9 30 */ addi r4, r4, __ct__6dMdl_cFv@l
/*.global __dt__6dMdl_cFv*/
/* 8009C7D4 00099714  3C A0 80 0A */ lis r5, __dt__6dMdl_cFv@ha
/*.global __dt__6dMdl_cFv*/
/* 8009C7D8 00099718  38 A5 C8 08 */ addi r5, r5, __dt__6dMdl_cFv@l
/* 8009C7DC 0009971C  38 C0 00 20 */ li r6, 0x20
/* 8009C7E0 00099720  38 E0 00 04 */ li r7, 4
/* 8009C7E4 00099724  48 2C 55 7D */ bl __construct_array
/* 8009C7E8 00099728  38 00 00 00 */ li r0, 0
/* 8009C7EC 0009972C  98 1F 00 80 */ stb r0, 0x80(r31)
lbl_8009C7F0:
/* 8009C7F0 00099730  93 ED 8A 20 */ stw r31, _m_myObj-_SDA_BASE_(r13)
/* 8009C7F4 00099734  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8009C7F8 00099738  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8009C7FC 0009973C  7C 08 03 A6 */ mtlr r0
/* 8009C800 00099740  38 21 00 10 */ addi r1, r1, 0x10
/* 8009C804 00099744  4E 80 00 20 */ blr