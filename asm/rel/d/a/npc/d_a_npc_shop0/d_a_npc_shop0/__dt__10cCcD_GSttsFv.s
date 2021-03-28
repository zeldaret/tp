lbl_80AEBB5C:
/* 80AEBB5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEBB60  7C 08 02 A6 */	mflr r0
/* 80AEBB64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEBB68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEBB6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEBB70  41 82 00 1C */	beq lbl_80AEBB8C
/* 80AEBB74  3C A0 80 AF */	lis r5, __vt__10cCcD_GStts@ha
/* 80AEBB78  38 05 BD 84 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80AEBB7C  90 1F 00 00 */	stw r0, 0(r31)
/* 80AEBB80  7C 80 07 35 */	extsh. r0, r4
/* 80AEBB84  40 81 00 08 */	ble lbl_80AEBB8C
/* 80AEBB88  4B 7E 31 B4 */	b __dl__FPv
lbl_80AEBB8C:
/* 80AEBB8C  7F E3 FB 78 */	mr r3, r31
/* 80AEBB90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEBB94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEBB98  7C 08 03 A6 */	mtlr r0
/* 80AEBB9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEBBA0  4E 80 00 20 */	blr 
