lbl_80583364:
/* 80583364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80583368  7C 08 02 A6 */	mflr r0
/* 8058336C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80583370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80583374  93 C1 00 08 */	stw r30, 8(r1)
/* 80583378  7C 7F 1B 78 */	mr r31, r3
/* 8058337C  3C 80 80 58 */	lis r4, lit_3970@ha /* 0x80585620@ha */
/* 80583380  3B C4 56 20 */	addi r30, r4, lit_3970@l /* 0x80585620@l */
/* 80583384  4B FF FB BD */	bl calcNormalSwing__15daObj_Kanban2_cFv
/* 80583388  80 1F 08 84 */	lwz r0, 0x884(r31)
/* 8058338C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80583390  90 1F 08 84 */	stw r0, 0x884(r31)
/* 80583394  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80583398  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8058339C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805833A0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 805833A4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805833A8  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 805833AC  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 805833B0  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 805833B4  EC 01 00 2A */	fadds f0, f1, f0
/* 805833B8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 805833BC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805833C0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 805833C4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805833C8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805833CC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805833D0  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 805833D4  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 805833D8  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 805833DC  EC 01 00 2A */	fadds f0, f1, f0
/* 805833E0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805833E4  7F E3 FB 78 */	mr r3, r31
/* 805833E8  4B FF E9 1D */	bl damage_check__15daObj_Kanban2_cFv
/* 805833EC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805833F0  D0 1F 06 00 */	stfs f0, 0x600(r31)
/* 805833F4  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 805833F8  3C 03 FF FD */	addis r0, r3, 0xfffd
/* 805833FC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80583400  41 82 00 0C */	beq lbl_8058340C
/* 80583404  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80583408  D0 1F 06 00 */	stfs f0, 0x600(r31)
lbl_8058340C:
/* 8058340C  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 80583410  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80583414  40 82 00 0C */	bne lbl_80583420
/* 80583418  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8058341C  D0 1F 06 00 */	stfs f0, 0x600(r31)
lbl_80583420:
/* 80583420  A8 1F 0A 00 */	lha r0, 0xa00(r31)
/* 80583424  2C 00 FF FF */	cmpwi r0, -1
/* 80583428  41 82 00 1C */	beq lbl_80583444
/* 8058342C  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 80583430  3C 03 FF FD */	addis r0, r3, 0xfffd
/* 80583434  28 00 FF FF */	cmplwi r0, 0xffff
/* 80583438  41 82 00 0C */	beq lbl_80583444
/* 8058343C  38 00 FF FF */	li r0, -1
/* 80583440  B0 1F 0A 00 */	sth r0, 0xa00(r31)
lbl_80583444:
/* 80583444  A8 1F 09 FE */	lha r0, 0x9fe(r31)
/* 80583448  2C 00 00 01 */	cmpwi r0, 1
/* 8058344C  41 82 00 D4 */	beq lbl_80583520
/* 80583450  40 80 01 30 */	bge lbl_80583580
/* 80583454  2C 00 00 00 */	cmpwi r0, 0
/* 80583458  40 80 00 08 */	bge lbl_80583460
/* 8058345C  48 00 01 24 */	b lbl_80583580
lbl_80583460:
/* 80583460  A8 1F 0A 00 */	lha r0, 0xa00(r31)
/* 80583464  2C 00 FF FF */	cmpwi r0, -1
/* 80583468  41 82 00 58 */	beq lbl_805834C0
/* 8058346C  7F E3 FB 78 */	mr r3, r31
/* 80583470  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80583474  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80583478  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8058347C  4B A9 72 95 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80583480  7C 64 1B 78 */	mr r4, r3
/* 80583484  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80583488  4B CE D9 9D */	bl cLib_distanceAngleS__Fss
/* 8058348C  2C 03 30 00 */	cmpwi r3, 0x3000
/* 80583490  40 80 00 30 */	bge lbl_805834C0
/* 80583494  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80583498  64 00 40 00 */	oris r0, r0, 0x4000
/* 8058349C  60 00 00 0A */	ori r0, r0, 0xa
/* 805834A0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 805834A4  38 00 00 15 */	li r0, 0x15
/* 805834A8  98 1F 05 45 */	stb r0, 0x545(r31)
/* 805834AC  98 1F 05 47 */	stb r0, 0x547(r31)
/* 805834B0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 805834B4  60 00 00 01 */	ori r0, r0, 1
/* 805834B8  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 805834BC  48 00 00 18 */	b lbl_805834D4
lbl_805834C0:
/* 805834C0  80 9F 05 5C */	lwz r4, 0x55c(r31)
/* 805834C4  3C 60 C0 00 */	lis r3, 0xC000 /* 0xBFFFFFF5@ha */
/* 805834C8  38 03 FF F5 */	addi r0, r3, 0xFFF5 /* 0xBFFFFFF5@l */
/* 805834CC  7C 80 00 38 */	and r0, r4, r0
/* 805834D0  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_805834D4:
/* 805834D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805834D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805834DC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805834E0  28 00 00 00 */	cmplwi r0, 0
/* 805834E4  41 82 00 9C */	beq lbl_80583580
/* 805834E8  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 805834EC  28 00 00 01 */	cmplwi r0, 1
/* 805834F0  40 82 00 90 */	bne lbl_80583580
/* 805834F4  38 7F 0A 04 */	addi r3, r31, 0xa04
/* 805834F8  7F E4 FB 78 */	mr r4, r31
/* 805834FC  A8 BF 0A 00 */	lha r5, 0xa00(r31)
/* 80583500  38 C0 00 00 */	li r6, 0
/* 80583504  38 E0 00 00 */	li r7, 0
/* 80583508  4B CC 6A 89 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8058350C  38 00 00 01 */	li r0, 1
/* 80583510  B0 1F 09 FE */	sth r0, 0x9fe(r31)
/* 80583514  38 00 00 03 */	li r0, 3
/* 80583518  98 1F 06 28 */	stb r0, 0x628(r31)
/* 8058351C  48 00 00 64 */	b lbl_80583580
lbl_80583520:
/* 80583520  38 00 00 03 */	li r0, 3
/* 80583524  98 1F 06 28 */	stb r0, 0x628(r31)
/* 80583528  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8058352C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80583530  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80583534  28 00 00 00 */	cmplwi r0, 0
/* 80583538  41 82 00 40 */	beq lbl_80583578
/* 8058353C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80583540  28 00 00 01 */	cmplwi r0, 1
/* 80583544  40 82 00 34 */	bne lbl_80583578
/* 80583548  38 7F 0A 04 */	addi r3, r31, 0xa04
/* 8058354C  7F E4 FB 78 */	mr r4, r31
/* 80583550  38 A0 00 00 */	li r5, 0
/* 80583554  38 C0 00 00 */	li r6, 0
/* 80583558  4B CC 6D 81 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8058355C  2C 03 00 00 */	cmpwi r3, 0
/* 80583560  41 82 00 20 */	beq lbl_80583580
/* 80583564  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80583568  4B AB EF 01 */	bl reset__14dEvt_control_cFv
/* 8058356C  38 00 00 00 */	li r0, 0
/* 80583570  B0 1F 09 FE */	sth r0, 0x9fe(r31)
/* 80583574  48 00 00 0C */	b lbl_80583580
lbl_80583578:
/* 80583578  38 00 00 00 */	li r0, 0
/* 8058357C  B0 1F 09 FE */	sth r0, 0x9fe(r31)
lbl_80583580:
/* 80583580  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80583584  83 C1 00 08 */	lwz r30, 8(r1)
/* 80583588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058358C  7C 08 03 A6 */	mtlr r0
/* 80583590  38 21 00 10 */	addi r1, r1, 0x10
/* 80583594  4E 80 00 20 */	blr 
