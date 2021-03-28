lbl_806E52B0:
/* 806E52B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E52B4  7C 08 02 A6 */	mflr r0
/* 806E52B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E52BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E52C0  93 C1 00 08 */	stw r30, 8(r1)
/* 806E52C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 806E52C8  7C 9F 23 78 */	mr r31, r4
/* 806E52CC  41 82 00 38 */	beq lbl_806E5304
/* 806E52D0  3C 80 80 6E */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 806E52D4  38 84 5B 88 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 806E52D8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 806E52DC  38 04 00 0C */	addi r0, r4, 0xc
/* 806E52E0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 806E52E4  38 04 00 18 */	addi r0, r4, 0x18
/* 806E52E8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 806E52EC  38 80 00 00 */	li r4, 0
/* 806E52F0  4B 99 0C A4 */	b __dt__9dBgS_AcchFv
/* 806E52F4  7F E0 07 35 */	extsh. r0, r31
/* 806E52F8  40 81 00 0C */	ble lbl_806E5304
/* 806E52FC  7F C3 F3 78 */	mr r3, r30
/* 806E5300  4B BE 9A 3C */	b __dl__FPv
lbl_806E5304:
/* 806E5304  7F C3 F3 78 */	mr r3, r30
/* 806E5308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E530C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806E5310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E5314  7C 08 03 A6 */	mtlr r0
/* 806E5318  38 21 00 10 */	addi r1, r1, 0x10
/* 806E531C  4E 80 00 20 */	blr 
