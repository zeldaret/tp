lbl_80969BD4:
/* 80969BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80969BD8  7C 08 02 A6 */	mflr r0
/* 80969BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80969BE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80969BE4  7C 7F 1B 78 */	mr r31, r3
/* 80969BE8  48 00 00 61 */	bl srchActor__13daNpcBlueNS_cFv
/* 80969BEC  7F E3 FB 78 */	mr r3, r31
/* 80969BF0  3C 80 80 97 */	lis r4, m__19daNpcBlueNS_Param_c@ha
/* 80969BF4  38 A4 C9 64 */	addi r5, r4, m__19daNpcBlueNS_Param_c@l
/* 80969BF8  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 80969BFC  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 80969C00  4B 7E A6 78 */	b getDistTableIdx__8daNpcF_cFii
/* 80969C04  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80969C08  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80969C0C  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80969C10  7F E3 FB 78 */	mr r3, r31
/* 80969C14  3C 80 80 97 */	lis r4, m__19daNpcBlueNS_Param_c@ha
/* 80969C18  38 A4 C9 64 */	addi r5, r4, m__19daNpcBlueNS_Param_c@l
/* 80969C1C  A8 85 00 48 */	lha r4, 0x48(r5)
/* 80969C20  A8 A5 00 4A */	lha r5, 0x4a(r5)
/* 80969C24  4B 7E A6 54 */	b getDistTableIdx__8daNpcF_cFii
/* 80969C28  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80969C2C  38 00 00 00 */	li r0, 0
/* 80969C30  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80969C34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80969C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80969C3C  7C 08 03 A6 */	mtlr r0
/* 80969C40  38 21 00 10 */	addi r1, r1, 0x10
/* 80969C44  4E 80 00 20 */	blr 
