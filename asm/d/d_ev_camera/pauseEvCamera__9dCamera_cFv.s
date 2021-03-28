lbl_80089730:
/* 80089730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80089734  7C 08 02 A6 */	mflr r0
/* 80089738  90 01 00 14 */	stw r0, 0x14(r1)
/* 8008973C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80089740  7C 7F 1B 78 */	mr r31, r3
/* 80089744  80 03 01 74 */	lwz r0, 0x174(r3)
/* 80089748  28 00 00 00 */	cmplwi r0, 0
/* 8008974C  40 82 00 48 */	bne lbl_80089794
/* 80089750  48 0F 75 19 */	bl Reset__9dCamera_cFv
/* 80089754  38 00 00 01 */	li r0, 1
/* 80089758  98 1F 01 58 */	stb r0, 0x158(r31)
/* 8008975C  7F E3 FB 78 */	mr r3, r31
/* 80089760  38 9F 03 F0 */	addi r4, r31, 0x3f0
/* 80089764  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80089768  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008976C  38 C0 FF FF */	li r6, -1
/* 80089770  4B FF F9 1D */	bl getEvIntData__9dCamera_cFPiPci
/* 80089774  98 7F 03 E8 */	stb r3, 0x3e8(r31)
/* 80089778  7F E3 FB 78 */	mr r3, r31
/* 8008977C  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 80089780  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80089784  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80089788  38 A5 00 06 */	addi r5, r5, 6
/* 8008978C  38 C0 00 00 */	li r6, 0
/* 80089790  4B FF F8 FD */	bl getEvIntData__9dCamera_cFPiPci
lbl_80089794:
/* 80089794  80 1F 03 EC */	lwz r0, 0x3ec(r31)
/* 80089798  2C 00 00 00 */	cmpwi r0, 0
/* 8008979C  41 82 00 10 */	beq lbl_800897AC
/* 800897A0  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 800897A4  60 00 00 01 */	ori r0, r0, 1
/* 800897A8  90 1F 06 0C */	stw r0, 0x60c(r31)
lbl_800897AC:
/* 800897AC  88 1F 03 E8 */	lbz r0, 0x3e8(r31)
/* 800897B0  28 00 00 00 */	cmplwi r0, 0
/* 800897B4  41 82 00 1C */	beq lbl_800897D0
/* 800897B8  80 7F 01 74 */	lwz r3, 0x174(r31)
/* 800897BC  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 800897C0  7C 03 00 40 */	cmplw r3, r0
/* 800897C4  40 80 00 0C */	bge lbl_800897D0
/* 800897C8  38 60 00 00 */	li r3, 0
/* 800897CC  48 00 00 08 */	b lbl_800897D4
lbl_800897D0:
/* 800897D0  38 60 00 01 */	li r3, 1
lbl_800897D4:
/* 800897D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800897D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800897DC  7C 08 03 A6 */	mtlr r0
/* 800897E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800897E4  4E 80 00 20 */	blr 
