lbl_80D181E8:
/* 80D181E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D181EC  7C 08 02 A6 */	mflr r0
/* 80D181F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D181F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D181F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D181FC  41 82 00 30 */	beq lbl_80D1822C
/* 80D18200  3C 60 80 D2 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D18204  38 03 90 30 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D18208  90 1F 00 00 */	stw r0, 0(r31)
/* 80D1820C  41 82 00 10 */	beq lbl_80D1821C
/* 80D18210  3C 60 80 D2 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D18214  38 03 90 24 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D18218  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D1821C:
/* 80D1821C  7C 80 07 35 */	extsh. r0, r4
/* 80D18220  40 81 00 0C */	ble lbl_80D1822C
/* 80D18224  7F E3 FB 78 */	mr r3, r31
/* 80D18228  4B 5B 6B 14 */	b __dl__FPv
lbl_80D1822C:
/* 80D1822C  7F E3 FB 78 */	mr r3, r31
/* 80D18230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D18234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D18238  7C 08 03 A6 */	mtlr r0
/* 80D1823C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D18240  4E 80 00 20 */	blr 
