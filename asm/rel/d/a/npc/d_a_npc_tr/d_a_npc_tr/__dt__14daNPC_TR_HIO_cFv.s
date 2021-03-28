lbl_80B264E4:
/* 80B264E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B264E8  7C 08 02 A6 */	mflr r0
/* 80B264EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B264F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B264F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B264F8  41 82 00 1C */	beq lbl_80B26514
/* 80B264FC  3C A0 80 B2 */	lis r5, __vt__14daNPC_TR_HIO_c@ha
/* 80B26500  38 05 66 60 */	addi r0, r5, __vt__14daNPC_TR_HIO_c@l
/* 80B26504  90 1F 00 00 */	stw r0, 0(r31)
/* 80B26508  7C 80 07 35 */	extsh. r0, r4
/* 80B2650C  40 81 00 08 */	ble lbl_80B26514
/* 80B26510  4B 7A 88 2C */	b __dl__FPv
lbl_80B26514:
/* 80B26514  7F E3 FB 78 */	mr r3, r31
/* 80B26518  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2651C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B26520  7C 08 03 A6 */	mtlr r0
/* 80B26524  38 21 00 10 */	addi r1, r1, 0x10
/* 80B26528  4E 80 00 20 */	blr 
