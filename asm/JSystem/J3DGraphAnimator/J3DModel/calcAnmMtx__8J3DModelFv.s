lbl_80327BD4:
/* 80327BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80327BD8  7C 08 02 A6 */	mflr r0
/* 80327BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80327BE0  7C 66 1B 78 */	mr r6, r3
/* 80327BE4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80327BE8  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80327BEC  90 C3 00 38 */	stw r6, 0x38(r3)
/* 80327BF0  80 06 00 08 */	lwz r0, 8(r6)
/* 80327BF4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80327BF8  41 82 00 30 */	beq lbl_80327C28
/* 80327BFC  80 66 00 04 */	lwz r3, 4(r6)
/* 80327C00  80 86 00 84 */	lwz r4, 0x84(r6)
/* 80327C04  3C A0 80 3A */	lis r5, j3dDefaultScale@ha
/* 80327C08  38 A5 1E 50 */	addi r5, r5, j3dDefaultScale@l
/* 80327C0C  3C C0 80 3A */	lis r6, j3dDefaultMtx@ha
/* 80327C10  38 C6 1E 5C */	addi r6, r6, j3dDefaultMtx@l
/* 80327C14  85 83 00 10 */	lwzu r12, 0x10(r3)
/* 80327C18  81 8C 00 08 */	lwz r12, 8(r12)
/* 80327C1C  7D 89 03 A6 */	mtctr r12
/* 80327C20  4E 80 04 21 */	bctrl 
/* 80327C24  48 00 00 24 */	b lbl_80327C48
lbl_80327C28:
/* 80327C28  80 66 00 04 */	lwz r3, 4(r6)
/* 80327C2C  80 86 00 84 */	lwz r4, 0x84(r6)
/* 80327C30  38 A6 00 18 */	addi r5, r6, 0x18
/* 80327C34  38 C6 00 24 */	addi r6, r6, 0x24
/* 80327C38  85 83 00 10 */	lwzu r12, 0x10(r3)
/* 80327C3C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80327C40  7D 89 03 A6 */	mtctr r12
/* 80327C44  4E 80 04 21 */	bctrl 
lbl_80327C48:
/* 80327C48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80327C4C  7C 08 03 A6 */	mtlr r0
/* 80327C50  38 21 00 10 */	addi r1, r1, 0x10
/* 80327C54  4E 80 00 20 */	blr 
