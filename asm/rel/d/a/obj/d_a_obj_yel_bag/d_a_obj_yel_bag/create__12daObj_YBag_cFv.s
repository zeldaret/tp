lbl_80D3C610:
/* 80D3C610  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D3C614  7C 08 02 A6 */	mflr r0
/* 80D3C618  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D3C61C  39 61 00 40 */	addi r11, r1, 0x40
/* 80D3C620  4B 62 5B A4 */	b _savegpr_23
/* 80D3C624  7C 7D 1B 78 */	mr r29, r3
/* 80D3C628  3C 80 80 D4 */	lis r4, cNullVec__6Z2Calc@ha
/* 80D3C62C  3B C4 DD 74 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80D3C630  3C 80 80 D4 */	lis r4, mCcDObjInfo__12daObj_YBag_c@ha
/* 80D3C634  3B E4 DC 8C */	addi r31, r4, mCcDObjInfo__12daObj_YBag_c@l
/* 80D3C638  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D3C63C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D3C640  40 82 00 1C */	bne lbl_80D3C65C
/* 80D3C644  28 1D 00 00 */	cmplwi r29, 0
/* 80D3C648  41 82 00 08 */	beq lbl_80D3C650
/* 80D3C64C  4B FF FA A1 */	bl __ct__12daObj_YBag_cFv
lbl_80D3C650:
/* 80D3C650  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80D3C654  60 00 00 08 */	ori r0, r0, 8
/* 80D3C658  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80D3C65C:
/* 80D3C65C  7F A3 EB 78 */	mr r3, r29
/* 80D3C660  48 00 0D F9 */	bl getTypeFromParam__12daObj_YBag_cFv
/* 80D3C664  98 7D 0A 30 */	stb r3, 0xa30(r29)
/* 80D3C668  3B 00 00 00 */	li r24, 0
/* 80D3C66C  3A E0 00 00 */	li r23, 0
/* 80D3C670  3B 80 00 00 */	li r28, 0
/* 80D3C674  3B 60 00 00 */	li r27, 0
/* 80D3C678  3B 3E 00 3C */	addi r25, r30, 0x3c
/* 80D3C67C  3B 5E 00 34 */	addi r26, r30, 0x34
/* 80D3C680  48 00 00 48 */	b lbl_80D3C6C8
lbl_80D3C684:
/* 80D3C684  38 7B 05 68 */	addi r3, r27, 0x568
/* 80D3C688  7C 7D 1A 14 */	add r3, r29, r3
/* 80D3C68C  54 00 10 3A */	slwi r0, r0, 2
/* 80D3C690  7C 99 00 2E */	lwzx r4, r25, r0
/* 80D3C694  4B 2F 08 28 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D3C698  2C 03 00 05 */	cmpwi r3, 5
/* 80D3C69C  41 82 00 0C */	beq lbl_80D3C6A8
/* 80D3C6A0  2C 03 00 03 */	cmpwi r3, 3
/* 80D3C6A4  40 82 00 0C */	bne lbl_80D3C6B0
lbl_80D3C6A8:
/* 80D3C6A8  38 60 00 05 */	li r3, 5
/* 80D3C6AC  48 00 01 D4 */	b lbl_80D3C880
lbl_80D3C6B0:
/* 80D3C6B0  2C 03 00 04 */	cmpwi r3, 4
/* 80D3C6B4  40 82 00 08 */	bne lbl_80D3C6BC
/* 80D3C6B8  3B 18 00 01 */	addi r24, r24, 1
lbl_80D3C6BC:
/* 80D3C6BC  3A F7 00 01 */	addi r23, r23, 1
/* 80D3C6C0  3B 9C 00 04 */	addi r28, r28, 4
/* 80D3C6C4  3B 7B 00 08 */	addi r27, r27, 8
lbl_80D3C6C8:
/* 80D3C6C8  88 1D 0A 30 */	lbz r0, 0xa30(r29)
/* 80D3C6CC  54 00 10 3A */	slwi r0, r0, 2
/* 80D3C6D0  7C 7A 00 2E */	lwzx r3, r26, r0
/* 80D3C6D4  7C 03 E0 2E */	lwzx r0, r3, r28
/* 80D3C6D8  2C 00 00 00 */	cmpwi r0, 0
/* 80D3C6DC  40 80 FF A8 */	bge lbl_80D3C684
/* 80D3C6E0  7C 18 B8 00 */	cmpw r24, r23
/* 80D3C6E4  40 82 01 98 */	bne lbl_80D3C87C
/* 80D3C6E8  7F A3 EB 78 */	mr r3, r29
/* 80D3C6EC  3C 80 80 D4 */	lis r4, createHeapCallBack__12daObj_YBag_cFP10fopAc_ac_c@ha
/* 80D3C6F0  38 84 D4 38 */	addi r4, r4, createHeapCallBack__12daObj_YBag_cFP10fopAc_ac_c@l
/* 80D3C6F4  38 A0 00 00 */	li r5, 0
/* 80D3C6F8  4B 2D DD B8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D3C6FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D3C700  40 82 00 0C */	bne lbl_80D3C70C
/* 80D3C704  38 60 00 05 */	li r3, 5
/* 80D3C708  48 00 01 78 */	b lbl_80D3C880
lbl_80D3C70C:
/* 80D3C70C  7F A3 EB 78 */	mr r3, r29
/* 80D3C710  48 00 0D 51 */	bl isDelete__12daObj_YBag_cFv
/* 80D3C714  2C 03 00 00 */	cmpwi r3, 0
/* 80D3C718  41 82 00 0C */	beq lbl_80D3C724
/* 80D3C71C  38 60 00 05 */	li r3, 5
/* 80D3C720  48 00 01 60 */	b lbl_80D3C880
lbl_80D3C724:
/* 80D3C724  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 80D3C728  38 03 00 24 */	addi r0, r3, 0x24
/* 80D3C72C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80D3C730  7F A3 EB 78 */	mr r3, r29
/* 80D3C734  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80D3C738  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80D3C73C  FC 60 08 90 */	fmr f3, f1
/* 80D3C740  C0 9F 00 64 */	lfs f4, 0x64(r31)
/* 80D3C744  C0 BF 00 68 */	lfs f5, 0x68(r31)
/* 80D3C748  FC C0 20 90 */	fmr f6, f4
/* 80D3C74C  4B 2D DD FC */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D3C750  38 7D 07 9C */	addi r3, r29, 0x79c
/* 80D3C754  38 9F 00 30 */	addi r4, r31, 0x30
/* 80D3C758  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80D3C75C  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80D3C760  4B 33 97 F8 */	b SetWall__12dBgS_AcchCirFff
/* 80D3C764  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80D3C768  90 01 00 08 */	stw r0, 8(r1)
/* 80D3C76C  38 7D 05 88 */	addi r3, r29, 0x588
/* 80D3C770  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D3C774  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80D3C778  7F A6 EB 78 */	mr r6, r29
/* 80D3C77C  38 E0 00 01 */	li r7, 1
/* 80D3C780  39 1D 07 9C */	addi r8, r29, 0x79c
/* 80D3C784  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80D3C788  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80D3C78C  4B 33 9A BC */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80D3C790  38 7D 07 60 */	addi r3, r29, 0x760
/* 80D3C794  38 9F 00 30 */	addi r4, r31, 0x30
/* 80D3C798  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80D3C79C  FC 00 00 1E */	fctiwz f0, f0
/* 80D3C7A0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D3C7A4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80D3C7A8  38 A0 00 00 */	li r5, 0
/* 80D3C7AC  7F A6 EB 78 */	mr r6, r29
/* 80D3C7B0  4B 34 70 B0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D3C7B4  38 7D 07 DC */	addi r3, r29, 0x7dc
/* 80D3C7B8  38 9E 00 40 */	addi r4, r30, 0x40
/* 80D3C7BC  4B 34 80 F8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D3C7C0  38 1D 07 60 */	addi r0, r29, 0x760
/* 80D3C7C4  90 1D 08 20 */	stw r0, 0x820(r29)
/* 80D3C7C8  38 7D 05 88 */	addi r3, r29, 0x588
/* 80D3C7CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D3C7D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D3C7D4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80D3C7D8  4B 33 A2 D4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80D3C7DC  80 1D 06 64 */	lwz r0, 0x664(r29)
/* 80D3C7E0  90 1D 09 18 */	stw r0, 0x918(r29)
/* 80D3C7E4  80 1D 06 68 */	lwz r0, 0x668(r29)
/* 80D3C7E8  90 1D 09 1C */	stw r0, 0x91c(r29)
/* 80D3C7EC  80 1D 06 6C */	lwz r0, 0x66c(r29)
/* 80D3C7F0  90 1D 09 20 */	stw r0, 0x920(r29)
/* 80D3C7F4  88 1D 06 70 */	lbz r0, 0x670(r29)
/* 80D3C7F8  98 1D 09 24 */	stb r0, 0x924(r29)
/* 80D3C7FC  A0 1D 06 78 */	lhz r0, 0x678(r29)
/* 80D3C800  B0 1D 09 2C */	sth r0, 0x92c(r29)
/* 80D3C804  A0 1D 06 7A */	lhz r0, 0x67a(r29)
/* 80D3C808  B0 1D 09 2E */	sth r0, 0x92e(r29)
/* 80D3C80C  80 1D 06 7C */	lwz r0, 0x67c(r29)
/* 80D3C810  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80D3C814  80 1D 06 80 */	lwz r0, 0x680(r29)
/* 80D3C818  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80D3C81C  C0 1D 06 88 */	lfs f0, 0x688(r29)
/* 80D3C820  D0 1D 09 3C */	stfs f0, 0x93c(r29)
/* 80D3C824  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 80D3C828  D0 1D 09 40 */	stfs f0, 0x940(r29)
/* 80D3C82C  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 80D3C830  D0 1D 09 44 */	stfs f0, 0x944(r29)
/* 80D3C834  80 1D 06 94 */	lwz r0, 0x694(r29)
/* 80D3C838  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80D3C83C  C0 1D 06 98 */	lfs f0, 0x698(r29)
/* 80D3C840  D0 1D 09 4C */	stfs f0, 0x94c(r29)
/* 80D3C844  80 1D 06 9C */	lwz r0, 0x69c(r29)
/* 80D3C848  90 1D 09 50 */	stw r0, 0x950(r29)
/* 80D3C84C  C0 1D 06 20 */	lfs f0, 0x620(r29)
/* 80D3C850  D0 1D 09 F0 */	stfs f0, 0x9f0(r29)
/* 80D3C854  7F A3 EB 78 */	mr r3, r29
/* 80D3C858  48 00 0C 11 */	bl setEnvTevColor__12daObj_YBag_cFv
/* 80D3C85C  7F A3 EB 78 */	mr r3, r29
/* 80D3C860  48 00 0C 65 */	bl setRoomNo__12daObj_YBag_cFv
/* 80D3C864  7F A3 EB 78 */	mr r3, r29
/* 80D3C868  48 00 0C A1 */	bl reset__12daObj_YBag_cFv
/* 80D3C86C  7F A3 EB 78 */	mr r3, r29
/* 80D3C870  48 00 01 01 */	bl Execute__12daObj_YBag_cFv
/* 80D3C874  38 60 00 04 */	li r3, 4
/* 80D3C878  48 00 00 08 */	b lbl_80D3C880
lbl_80D3C87C:
/* 80D3C87C  38 60 00 00 */	li r3, 0
lbl_80D3C880:
/* 80D3C880  39 61 00 40 */	addi r11, r1, 0x40
/* 80D3C884  4B 62 59 8C */	b _restgpr_23
/* 80D3C888  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D3C88C  7C 08 03 A6 */	mtlr r0
/* 80D3C890  38 21 00 40 */	addi r1, r1, 0x40
/* 80D3C894  4E 80 00 20 */	blr 
