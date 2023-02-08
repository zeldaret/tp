lbl_80C4D6F8:
/* 80C4D6F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4D6FC  7C 08 02 A6 */	mflr r0
/* 80C4D700  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4D704  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4D708  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C4D70C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C4D710  54 00 7F FE */	rlwinm r0, r0, 0xf, 0x1f, 0x1f
/* 80C4D714  90 03 06 20 */	stw r0, 0x620(r3)
/* 80C4D718  41 82 00 08 */	beq lbl_80C4D720
/* 80C4D71C  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C4D720:
/* 80C4D720  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80C4D724  54 00 10 3A */	slwi r0, r0, 2
/* 80C4D728  3C 80 80 C5 */	lis r4, l_arcName@ha /* 0x80C4E870@ha */
/* 80C4D72C  38 84 E8 70 */	addi r4, r4, l_arcName@l /* 0x80C4E870@l */
/* 80C4D730  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C4D734  4B 3D F7 89 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C4D738  7C 60 1B 78 */	mr r0, r3
/* 80C4D73C  2C 00 00 04 */	cmpwi r0, 4
/* 80C4D740  40 82 00 50 */	bne lbl_80C4D790
/* 80C4D744  7F E3 FB 78 */	mr r3, r31
/* 80C4D748  48 00 01 25 */	bl setMtx__15daObjKWheel00_cFv
/* 80C4D74C  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80C4D750  54 00 10 3A */	slwi r0, r0, 2
/* 80C4D754  7F E3 FB 78 */	mr r3, r31
/* 80C4D758  3C 80 80 C5 */	lis r4, l_arcName@ha /* 0x80C4E870@ha */
/* 80C4D75C  38 84 E8 70 */	addi r4, r4, l_arcName@l /* 0x80C4E870@l */
/* 80C4D760  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C4D764  3C A0 80 C5 */	lis r5, l_dzbidx@ha /* 0x80C4E800@ha */
/* 80C4D768  38 A5 E8 00 */	addi r5, r5, l_dzbidx@l /* 0x80C4E800@l */
/* 80C4D76C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C4D770  38 C0 00 00 */	li r6, 0
/* 80C4D774  38 E0 40 00 */	li r7, 0x4000
/* 80C4D778  39 1F 05 B8 */	addi r8, r31, 0x5b8
/* 80C4D77C  4B 42 B0 41 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C4D780  7C 60 1B 78 */	mr r0, r3
/* 80C4D784  2C 00 00 05 */	cmpwi r0, 5
/* 80C4D788  40 82 00 08 */	bne lbl_80C4D790
/* 80C4D78C  48 00 00 08 */	b lbl_80C4D794
lbl_80C4D790:
/* 80C4D790  7C 03 03 78 */	mr r3, r0
lbl_80C4D794:
/* 80C4D794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4D798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4D79C  7C 08 03 A6 */	mtlr r0
/* 80C4D7A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4D7A4  4E 80 00 20 */	blr 
