lbl_806ADD30:
/* 806ADD30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806ADD34  7C 08 02 A6 */	mflr r0
/* 806ADD38  90 01 00 14 */	stw r0, 0x14(r1)
/* 806ADD3C  7C 60 1B 78 */	mr r0, r3
/* 806ADD40  2C 04 00 00 */	cmpwi r4, 0
/* 806ADD44  40 82 00 24 */	bne lbl_806ADD68
/* 806ADD48  3C 60 80 43 */	lis r3, j3dSys@ha
/* 806ADD4C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 806ADD50  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 806ADD54  80 65 00 14 */	lwz r3, 0x14(r5)
/* 806ADD58  28 03 00 00 */	cmplwi r3, 0
/* 806ADD5C  41 82 00 0C */	beq lbl_806ADD68
/* 806ADD60  7C 04 03 78 */	mr r4, r0
/* 806ADD64  4B FF FE 89 */	bl ctrlJointTuba__8daE_DT_cFP8J3DJointP8J3DModel
lbl_806ADD68:
/* 806ADD68  38 60 00 01 */	li r3, 1
/* 806ADD6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806ADD70  7C 08 03 A6 */	mtlr r0
/* 806ADD74  38 21 00 10 */	addi r1, r1, 0x10
/* 806ADD78  4E 80 00 20 */	blr 
