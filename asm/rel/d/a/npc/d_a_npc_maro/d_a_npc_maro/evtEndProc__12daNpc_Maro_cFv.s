lbl_8055CC9C:
/* 8055CC9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055CCA0  7C 08 02 A6 */	mflr r0
/* 8055CCA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055CCA8  88 03 11 38 */	lbz r0, 0x1138(r3)
/* 8055CCAC  28 00 00 00 */	cmplwi r0, 0
/* 8055CCB0  41 82 00 14 */	beq lbl_8055CCC4
/* 8055CCB4  4B C2 49 8C */	b dCam_getBody__Fv
/* 8055CCB8  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 8055CCBC  64 00 40 00 */	oris r0, r0, 0x4000
/* 8055CCC0  90 03 06 0C */	stw r0, 0x60c(r3)
lbl_8055CCC4:
/* 8055CCC4  38 60 00 01 */	li r3, 1
/* 8055CCC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055CCCC  7C 08 03 A6 */	mtlr r0
/* 8055CCD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8055CCD4  4E 80 00 20 */	blr 
