lbl_80D6786C:
/* 80D6786C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D67870  7C 08 02 A6 */	mflr r0
/* 80D67874  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D67878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D6787C  7C 7F 1B 78 */	mr r31, r3
/* 80D67880  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D67884  3C 80 80 D6 */	lis r4, l_arcName@ha
/* 80D67888  38 84 7B E0 */	addi r4, r4, l_arcName@l
/* 80D6788C  4B 2C 57 7C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D67890  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80D67894  28 03 00 00 */	cmplwi r3, 0
/* 80D67898  41 82 00 18 */	beq lbl_80D678B0
/* 80D6789C  38 80 00 01 */	li r4, 1
/* 80D678A0  81 83 00 00 */	lwz r12, 0(r3)
/* 80D678A4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80D678A8  7D 89 03 A6 */	mtctr r12
/* 80D678AC  4E 80 04 21 */	bctrl 
lbl_80D678B0:
/* 80D678B0  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80D678B4  28 03 00 00 */	cmplwi r3, 0
/* 80D678B8  41 82 00 18 */	beq lbl_80D678D0
/* 80D678BC  38 80 00 01 */	li r4, 1
/* 80D678C0  81 83 00 00 */	lwz r12, 0(r3)
/* 80D678C4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80D678C8  7D 89 03 A6 */	mtctr r12
/* 80D678CC  4E 80 04 21 */	bctrl 
lbl_80D678D0:
/* 80D678D0  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 80D678D4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80D678D8  81 83 00 00 */	lwz r12, 0(r3)
/* 80D678DC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80D678E0  7D 89 03 A6 */	mtctr r12
/* 80D678E4  4E 80 04 21 */	bctrl 
/* 80D678E8  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 80D678EC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80D678F0  81 83 00 00 */	lwz r12, 0(r3)
/* 80D678F4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80D678F8  7D 89 03 A6 */	mtctr r12
/* 80D678FC  4E 80 04 21 */	bctrl 
/* 80D67900  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 80D67904  28 03 00 00 */	cmplwi r3, 0
/* 80D67908  41 82 00 18 */	beq lbl_80D67920
/* 80D6790C  38 80 00 01 */	li r4, 1
/* 80D67910  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80D67914  81 8C 00 08 */	lwz r12, 8(r12)
/* 80D67918  7D 89 03 A6 */	mtctr r12
/* 80D6791C  4E 80 04 21 */	bctrl 
lbl_80D67920:
/* 80D67920  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 80D67924  28 03 00 00 */	cmplwi r3, 0
/* 80D67928  41 82 00 08 */	beq lbl_80D67930
/* 80D6792C  4B 56 6B 1C */	b destroy__7JKRHeapFv
lbl_80D67930:
/* 80D67930  38 60 00 01 */	li r3, 1
/* 80D67934  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D67938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6793C  7C 08 03 A6 */	mtlr r0
/* 80D67940  38 21 00 10 */	addi r1, r1, 0x10
/* 80D67944  4E 80 00 20 */	blr 
