lbl_80055FE8:
/* 80055FE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80055FEC  7C 08 02 A6 */	mflr r0
/* 80055FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80055FF4  3C 80 80 42 */	lis r4, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80055FF8  38 84 48 D0 */	addi r4, r4, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80055FFC  38 A0 00 00 */	li r5, 0
/* 80056000  38 C0 00 00 */	li r6, 0
/* 80056004  4B FB F1 39 */	bl mDoLib_setResTimgObj__FPC7ResTIMGP9_GXTexObjUlP10_GXTlutObj
/* 80056008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005600C  7C 08 03 A6 */	mtlr r0
/* 80056010  38 21 00 10 */	addi r1, r1, 0x10
/* 80056014  4E 80 00 20 */	blr 
