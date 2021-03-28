lbl_80CA425C:
/* 80CA425C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA4260  7C 08 02 A6 */	mflr r0
/* 80CA4264  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA4268  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA426C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA4270  41 82 00 30 */	beq lbl_80CA42A0
/* 80CA4274  3C 60 80 CA */	lis r3, __vt__10dCcD_GStts@ha
/* 80CA4278  38 03 4A DC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CA427C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA4280  41 82 00 10 */	beq lbl_80CA4290
/* 80CA4284  3C 60 80 CA */	lis r3, __vt__10cCcD_GStts@ha
/* 80CA4288  38 03 4A D0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CA428C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CA4290:
/* 80CA4290  7C 80 07 35 */	extsh. r0, r4
/* 80CA4294  40 81 00 0C */	ble lbl_80CA42A0
/* 80CA4298  7F E3 FB 78 */	mr r3, r31
/* 80CA429C  4B 62 AA A0 */	b __dl__FPv
lbl_80CA42A0:
/* 80CA42A0  7F E3 FB 78 */	mr r3, r31
/* 80CA42A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA42A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA42AC  7C 08 03 A6 */	mtlr r0
/* 80CA42B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA42B4  4E 80 00 20 */	blr 
