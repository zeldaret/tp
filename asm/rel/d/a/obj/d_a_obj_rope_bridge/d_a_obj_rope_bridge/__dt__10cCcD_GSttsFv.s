lbl_80597D2C:
/* 80597D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80597D30  7C 08 02 A6 */	mflr r0
/* 80597D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80597D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80597D3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80597D40  41 82 00 1C */	beq lbl_80597D5C
/* 80597D44  3C A0 80 5A */	lis r5, __vt__10cCcD_GStts@ha
/* 80597D48  38 05 80 8C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80597D4C  90 1F 00 00 */	stw r0, 0(r31)
/* 80597D50  7C 80 07 35 */	extsh. r0, r4
/* 80597D54  40 81 00 08 */	ble lbl_80597D5C
/* 80597D58  4B D3 6F E4 */	b __dl__FPv
lbl_80597D5C:
/* 80597D5C  7F E3 FB 78 */	mr r3, r31
/* 80597D60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80597D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80597D68  7C 08 03 A6 */	mtlr r0
/* 80597D6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80597D70  4E 80 00 20 */	blr 
