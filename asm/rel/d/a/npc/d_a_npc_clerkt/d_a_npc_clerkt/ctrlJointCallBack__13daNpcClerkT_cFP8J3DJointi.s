lbl_8099AB34:
/* 8099AB34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099AB38  7C 08 02 A6 */	mflr r0
/* 8099AB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099AB40  7C 60 1B 78 */	mr r0, r3
/* 8099AB44  2C 04 00 00 */	cmpwi r4, 0
/* 8099AB48  40 82 00 30 */	bne lbl_8099AB78
/* 8099AB4C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8099AB50  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8099AB54  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 8099AB58  80 65 00 14 */	lwz r3, 0x14(r5)
/* 8099AB5C  28 03 00 00 */	cmplwi r3, 0
/* 8099AB60  41 82 00 18 */	beq lbl_8099AB78
/* 8099AB64  7C 04 03 78 */	mr r4, r0
/* 8099AB68  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 8099AB6C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8099AB70  7D 89 03 A6 */	mtctr r12
/* 8099AB74  4E 80 04 21 */	bctrl 
lbl_8099AB78:
/* 8099AB78  38 60 00 01 */	li r3, 1
/* 8099AB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099AB80  7C 08 03 A6 */	mtlr r0
/* 8099AB84  38 21 00 10 */	addi r1, r1, 0x10
/* 8099AB88  4E 80 00 20 */	blr 
