/* 800C7690 000C45D0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800C7694 000C45D4  7C 08 02 A6 */ mflr r0
/* 800C7698 000C45D8  90 01 00 14 */ stw r0, 0x14(r1)
/* 800C769C 000C45DC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800C76A0 000C45E0  7C 7F 1B 78 */ mr r31, r3
/* 800C76A4 000C45E4  38 80 00 1C */ li r4, 0x1c
/* 800C76A8 000C45E8  4B FF B6 FD */ bl daAlink_c_NS_commonProcInitNotSameProc
/* 800C76AC 000C45EC  2C 03 00 00 */ cmpwi r3, 0
/* 800C76B0 000C45F0  40 82 00 0C */ bne lbl_800C76BC
/* 800C76B4 000C45F4  38 60 00 00 */ li r3, 0
/* 800C76B8 000C45F8  48 00 00 2C */ b lbl_800C76E4
lbl_800C76BC:
/* 800C76BC 000C45FC  7F E3 FB 78 */ mr r3, r31
/* 800C76C0 000C4600  38 80 00 29 */ li r4, 0x29
/* 800C76C4 000C4604  3C A0 80 39 */ lis r5, lbl_8038E01C@ha
/* 800C76C8 000C4608  38 A5 E0 1C */ addi r5, r5, lbl_8038E01C@l
/* 800C76CC 000C460C  C0 25 00 30 */ lfs f1, 0x30(r5)
/* 800C76D0 000C4610  C0 45 00 34 */ lfs f2, 0x34(r5)
/* 800C76D4 000C4614  4B FE 59 0D */ bl daAlink_c_NS_setSingleAnimeBaseSpeed
/* 800C76D8 000C4618  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800C76DC 000C461C  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800C76E0 000C4620  38 60 00 01 */ li r3, 1
lbl_800C76E4:
/* 800C76E4 000C4624  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800C76E8 000C4628  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800C76EC 000C462C  7C 08 03 A6 */ mtlr r0
/* 800C76F0 000C4630  38 21 00 10 */ addi r1, r1, 0x10
/* 800C76F4 000C4634  4E 80 00 20 */ blr