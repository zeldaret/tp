lbl_8099D0A8:
/* 8099D0A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099D0AC  7C 08 02 A6 */	mflr r0
/* 8099D0B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099D0B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099D0B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8099D0BC  41 82 00 1C */	beq lbl_8099D0D8
/* 8099D0C0  3C A0 80 9A */	lis r5, __vt__19daNpcClerkt_Param_c@ha
/* 8099D0C4  38 05 D6 3C */	addi r0, r5, __vt__19daNpcClerkt_Param_c@l
/* 8099D0C8  90 1F 00 00 */	stw r0, 0(r31)
/* 8099D0CC  7C 80 07 35 */	extsh. r0, r4
/* 8099D0D0  40 81 00 08 */	ble lbl_8099D0D8
/* 8099D0D4  4B 93 1C 68 */	b __dl__FPv
lbl_8099D0D8:
/* 8099D0D8  7F E3 FB 78 */	mr r3, r31
/* 8099D0DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099D0E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099D0E4  7C 08 03 A6 */	mtlr r0
/* 8099D0E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8099D0EC  4E 80 00 20 */	blr 
