lbl_80B1C4F8:
/* 80B1C4F8  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80B1C4FC  7C 08 02 A6 */	mflr r0
/* 80B1C500  90 01 01 54 */	stw r0, 0x154(r1)
/* 80B1C504  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 80B1C508  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 80B1C50C  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 80B1C510  F3 C1 01 38 */	psq_st f30, 312(r1), 0, 0 /* qr0 */
/* 80B1C514  39 61 01 30 */	addi r11, r1, 0x130
/* 80B1C518  4B 84 5C C5 */	bl _savegpr_29
/* 80B1C51C  7C 7D 1B 78 */	mr r29, r3
/* 80B1C520  3C 60 80 B2 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80B1E0E4@ha */
/* 80B1C524  3B C3 E0 E4 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80B1E0E4@l */
/* 80B1C528  3C 60 80 B2 */	lis r3, m__16daNpcTks_Param_c@ha /* 0x80B1DD58@ha */
/* 80B1C52C  3B E3 DD 58 */	addi r31, r3, m__16daNpcTks_Param_c@l /* 0x80B1DD58@l */
/* 80B1C530  88 1D 13 8A */	lbz r0, 0x138a(r29)
/* 80B1C534  28 00 00 00 */	cmplwi r0, 0
/* 80B1C538  41 82 01 2C */	beq lbl_80B1C664
/* 80B1C53C  38 7D 0F F4 */	addi r3, r29, 0xff4
/* 80B1C540  4B 56 7F 21 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80B1C544  28 03 00 00 */	cmplwi r3, 0
/* 80B1C548  41 82 01 1C */	beq lbl_80B1C664
/* 80B1C54C  38 7D 0F F4 */	addi r3, r29, 0xff4
/* 80B1C550  4B 56 7F A9 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80B1C554  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80B1C558  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80B1C55C  41 82 00 88 */	beq lbl_80B1C5E4
/* 80B1C560  80 7E 01 2C */	lwz r3, 0x12c(r30)
/* 80B1C564  80 1E 01 30 */	lwz r0, 0x130(r30)
/* 80B1C568  90 61 00 E8 */	stw r3, 0xe8(r1)
/* 80B1C56C  90 01 00 EC */	stw r0, 0xec(r1)
/* 80B1C570  80 1E 01 34 */	lwz r0, 0x134(r30)
/* 80B1C574  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 80B1C578  38 00 00 03 */	li r0, 3
/* 80B1C57C  B0 1D 13 88 */	sth r0, 0x1388(r29)
/* 80B1C580  38 7D 13 4C */	addi r3, r29, 0x134c
/* 80B1C584  4B 84 5A 95 */	bl __ptmf_test
/* 80B1C588  2C 03 00 00 */	cmpwi r3, 0
/* 80B1C58C  41 82 00 14 */	beq lbl_80B1C5A0
/* 80B1C590  7F A3 EB 78 */	mr r3, r29
/* 80B1C594  39 9D 13 4C */	addi r12, r29, 0x134c
/* 80B1C598  4B 84 5A ED */	bl __ptmf_scall
/* 80B1C59C  60 00 00 00 */	nop 
lbl_80B1C5A0:
/* 80B1C5A0  38 00 00 00 */	li r0, 0
/* 80B1C5A4  B0 1D 13 88 */	sth r0, 0x1388(r29)
/* 80B1C5A8  80 61 00 E8 */	lwz r3, 0xe8(r1)
/* 80B1C5AC  80 01 00 EC */	lwz r0, 0xec(r1)
/* 80B1C5B0  90 7D 13 4C */	stw r3, 0x134c(r29)
/* 80B1C5B4  90 1D 13 50 */	stw r0, 0x1350(r29)
/* 80B1C5B8  80 01 00 F0 */	lwz r0, 0xf0(r1)
/* 80B1C5BC  90 1D 13 54 */	stw r0, 0x1354(r29)
/* 80B1C5C0  38 7D 13 4C */	addi r3, r29, 0x134c
/* 80B1C5C4  4B 84 5A 55 */	bl __ptmf_test
/* 80B1C5C8  2C 03 00 00 */	cmpwi r3, 0
/* 80B1C5CC  41 82 00 98 */	beq lbl_80B1C664
/* 80B1C5D0  7F A3 EB 78 */	mr r3, r29
/* 80B1C5D4  39 9D 13 4C */	addi r12, r29, 0x134c
/* 80B1C5D8  4B 84 5A AD */	bl __ptmf_scall
/* 80B1C5DC  60 00 00 00 */	nop 
/* 80B1C5E0  48 00 00 84 */	b lbl_80B1C664
lbl_80B1C5E4:
/* 80B1C5E4  80 7E 01 38 */	lwz r3, 0x138(r30)
/* 80B1C5E8  80 1E 01 3C */	lwz r0, 0x13c(r30)
/* 80B1C5EC  90 61 00 DC */	stw r3, 0xdc(r1)
/* 80B1C5F0  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80B1C5F4  80 1E 01 40 */	lwz r0, 0x140(r30)
/* 80B1C5F8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80B1C5FC  38 00 00 03 */	li r0, 3
/* 80B1C600  B0 1D 13 88 */	sth r0, 0x1388(r29)
/* 80B1C604  38 7D 13 4C */	addi r3, r29, 0x134c
/* 80B1C608  4B 84 5A 11 */	bl __ptmf_test
/* 80B1C60C  2C 03 00 00 */	cmpwi r3, 0
/* 80B1C610  41 82 00 14 */	beq lbl_80B1C624
/* 80B1C614  7F A3 EB 78 */	mr r3, r29
/* 80B1C618  39 9D 13 4C */	addi r12, r29, 0x134c
/* 80B1C61C  4B 84 5A 69 */	bl __ptmf_scall
/* 80B1C620  60 00 00 00 */	nop 
lbl_80B1C624:
/* 80B1C624  38 00 00 00 */	li r0, 0
/* 80B1C628  B0 1D 13 88 */	sth r0, 0x1388(r29)
/* 80B1C62C  80 61 00 DC */	lwz r3, 0xdc(r1)
/* 80B1C630  80 01 00 E0 */	lwz r0, 0xe0(r1)
/* 80B1C634  90 7D 13 4C */	stw r3, 0x134c(r29)
/* 80B1C638  90 1D 13 50 */	stw r0, 0x1350(r29)
/* 80B1C63C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80B1C640  90 1D 13 54 */	stw r0, 0x1354(r29)
/* 80B1C644  38 7D 13 4C */	addi r3, r29, 0x134c
/* 80B1C648  4B 84 59 D1 */	bl __ptmf_test
/* 80B1C64C  2C 03 00 00 */	cmpwi r3, 0
/* 80B1C650  41 82 00 14 */	beq lbl_80B1C664
/* 80B1C654  7F A3 EB 78 */	mr r3, r29
/* 80B1C658  39 9D 13 4C */	addi r12, r29, 0x134c
/* 80B1C65C  4B 84 5A 29 */	bl __ptmf_scall
/* 80B1C660  60 00 00 00 */	nop 
lbl_80B1C664:
/* 80B1C664  80 7D 05 5C */	lwz r3, 0x55c(r29)
/* 80B1C668  38 80 00 10 */	li r4, 0x10
/* 80B1C66C  48 00 04 E1 */	bl func_80B1CB4C
/* 80B1C670  28 03 00 00 */	cmplwi r3, 0
/* 80B1C674  41 82 00 90 */	beq lbl_80B1C704
/* 80B1C678  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80B1C67C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80B1C680  41 82 00 84 */	beq lbl_80B1C704
/* 80B1C684  80 7E 01 44 */	lwz r3, 0x144(r30)
/* 80B1C688  80 1E 01 48 */	lwz r0, 0x148(r30)
/* 80B1C68C  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 80B1C690  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80B1C694  80 1E 01 4C */	lwz r0, 0x14c(r30)
/* 80B1C698  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 80B1C69C  38 00 00 03 */	li r0, 3
/* 80B1C6A0  B0 1D 13 88 */	sth r0, 0x1388(r29)
/* 80B1C6A4  38 7D 13 4C */	addi r3, r29, 0x134c
/* 80B1C6A8  4B 84 59 71 */	bl __ptmf_test
/* 80B1C6AC  2C 03 00 00 */	cmpwi r3, 0
/* 80B1C6B0  41 82 00 14 */	beq lbl_80B1C6C4
/* 80B1C6B4  7F A3 EB 78 */	mr r3, r29
/* 80B1C6B8  39 9D 13 4C */	addi r12, r29, 0x134c
/* 80B1C6BC  4B 84 59 C9 */	bl __ptmf_scall
/* 80B1C6C0  60 00 00 00 */	nop 
lbl_80B1C6C4:
/* 80B1C6C4  38 00 00 00 */	li r0, 0
/* 80B1C6C8  B0 1D 13 88 */	sth r0, 0x1388(r29)
/* 80B1C6CC  80 61 00 D0 */	lwz r3, 0xd0(r1)
/* 80B1C6D0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80B1C6D4  90 7D 13 4C */	stw r3, 0x134c(r29)
/* 80B1C6D8  90 1D 13 50 */	stw r0, 0x1350(r29)
/* 80B1C6DC  80 01 00 D8 */	lwz r0, 0xd8(r1)
/* 80B1C6E0  90 1D 13 54 */	stw r0, 0x1354(r29)
/* 80B1C6E4  38 7D 13 4C */	addi r3, r29, 0x134c
/* 80B1C6E8  4B 84 59 31 */	bl __ptmf_test
/* 80B1C6EC  2C 03 00 00 */	cmpwi r3, 0
/* 80B1C6F0  41 82 00 14 */	beq lbl_80B1C704
/* 80B1C6F4  7F A3 EB 78 */	mr r3, r29
/* 80B1C6F8  39 9D 13 4C */	addi r12, r29, 0x134c
/* 80B1C6FC  4B 84 59 89 */	bl __ptmf_scall
/* 80B1C700  60 00 00 00 */	nop 
lbl_80B1C704:
/* 80B1C704  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1C708  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B1C70C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B1C710  28 00 00 00 */	cmplwi r0, 0
/* 80B1C714  41 82 00 38 */	beq lbl_80B1C74C
/* 80B1C718  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80B1C71C  28 00 00 01 */	cmplwi r0, 1
/* 80B1C720  41 82 00 2C */	beq lbl_80B1C74C
/* 80B1C724  80 9D 13 68 */	lwz r4, 0x1368(r29)
/* 80B1C728  3C 04 00 01 */	addis r0, r4, 1
/* 80B1C72C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B1C730  41 82 00 1C */	beq lbl_80B1C74C
/* 80B1C734  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B1C738  4B 52 6F B5 */	bl setPtI_Id__14dEvt_control_cFUi
/* 80B1C73C  38 00 FF FF */	li r0, -1
/* 80B1C740  90 1D 13 68 */	stw r0, 0x1368(r29)
/* 80B1C744  7F A3 EB 78 */	mr r3, r29
/* 80B1C748  4B 4F D5 35 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80B1C74C:
/* 80B1C74C  38 7D 13 4C */	addi r3, r29, 0x134c
/* 80B1C750  4B 84 58 C9 */	bl __ptmf_test
/* 80B1C754  2C 03 00 00 */	cmpwi r3, 0
/* 80B1C758  41 82 00 14 */	beq lbl_80B1C76C
/* 80B1C75C  7F A3 EB 78 */	mr r3, r29
/* 80B1C760  39 9D 13 4C */	addi r12, r29, 0x134c
/* 80B1C764  4B 84 59 21 */	bl __ptmf_scall
/* 80B1C768  60 00 00 00 */	nop 
lbl_80B1C76C:
/* 80B1C76C  80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 80B1C770  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 80B1C774  90 61 00 B8 */	stw r3, 0xb8(r1)
/* 80B1C778  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80B1C77C  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80B1C780  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 80B1C784  3B DF 00 00 */	addi r30, r31, 0
/* 80B1C788  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80B1C78C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80B1C790  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 80B1C794  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B1C798  38 01 00 B8 */	addi r0, r1, 0xb8
/* 80B1C79C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B1C7A0  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 80B1C7A4  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 80B1C7A8  90 61 00 C4 */	stw r3, 0xc4(r1)
/* 80B1C7AC  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80B1C7B0  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 80B1C7B4  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80B1C7B8  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80B1C7BC  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 80B1C7C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B1C7C4  38 01 00 C4 */	addi r0, r1, 0xc4
/* 80B1C7C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B1C7CC  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 80B1C7D0  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 80B1C7D4  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B1C7D8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B1C7DC  38 01 00 20 */	addi r0, r1, 0x20
/* 80B1C7E0  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B1C7E4  38 01 00 24 */	addi r0, r1, 0x24
/* 80B1C7E8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B1C7EC  A8 7D 09 DE */	lha r3, 0x9de(r29)
/* 80B1C7F0  7C 60 07 35 */	extsh. r0, r3
/* 80B1C7F4  41 80 00 18 */	blt lbl_80B1C80C
/* 80B1C7F8  2C 03 00 02 */	cmpwi r3, 2
/* 80B1C7FC  40 80 00 10 */	bge lbl_80B1C80C
/* 80B1C800  7F A3 EB 78 */	mr r3, r29
/* 80B1C804  38 81 00 38 */	addi r4, r1, 0x38
/* 80B1C808  4B 63 69 49 */	bl playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_80B1C80C:
/* 80B1C80C  80 7F 00 F8 */	lwz r3, 0xf8(r31)
/* 80B1C810  80 1F 00 FC */	lwz r0, 0xfc(r31)
/* 80B1C814  90 61 00 40 */	stw r3, 0x40(r1)
/* 80B1C818  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B1C81C  80 1F 01 00 */	lwz r0, 0x100(r31)
/* 80B1C820  90 01 00 48 */	stw r0, 0x48(r1)
/* 80B1C824  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80B1C828  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B1C82C  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 80B1C830  90 01 00 08 */	stw r0, 8(r1)
/* 80B1C834  38 01 00 40 */	addi r0, r1, 0x40
/* 80B1C838  90 01 00 08 */	stw r0, 8(r1)
/* 80B1C83C  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 80B1C840  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 80B1C844  90 61 00 4C */	stw r3, 0x4c(r1)
/* 80B1C848  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B1C84C  80 1F 01 10 */	lwz r0, 0x110(r31)
/* 80B1C850  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B1C854  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B1C858  80 1F 01 14 */	lwz r0, 0x114(r31)
/* 80B1C85C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B1C860  38 01 00 4C */	addi r0, r1, 0x4c
/* 80B1C864  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B1C868  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 80B1C86C  80 1F 01 1C */	lwz r0, 0x11c(r31)
/* 80B1C870  90 61 00 58 */	stw r3, 0x58(r1)
/* 80B1C874  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80B1C878  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 80B1C87C  90 01 00 60 */	stw r0, 0x60(r1)
/* 80B1C880  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B1C884  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 80B1C888  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B1C88C  38 01 00 58 */	addi r0, r1, 0x58
/* 80B1C890  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B1C894  80 7F 01 28 */	lwz r3, 0x128(r31)
/* 80B1C898  80 1F 01 2C */	lwz r0, 0x12c(r31)
/* 80B1C89C  90 61 00 64 */	stw r3, 0x64(r1)
/* 80B1C8A0  90 01 00 68 */	stw r0, 0x68(r1)
/* 80B1C8A4  80 1F 01 30 */	lwz r0, 0x130(r31)
/* 80B1C8A8  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80B1C8AC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B1C8B0  80 1F 01 34 */	lwz r0, 0x134(r31)
/* 80B1C8B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1C8B8  38 01 00 64 */	addi r0, r1, 0x64
/* 80B1C8BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1C8C0  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 80B1C8C4  80 1F 01 3C */	lwz r0, 0x13c(r31)
/* 80B1C8C8  90 61 00 70 */	stw r3, 0x70(r1)
/* 80B1C8CC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B1C8D0  80 1F 01 40 */	lwz r0, 0x140(r31)
/* 80B1C8D4  90 01 00 78 */	stw r0, 0x78(r1)
/* 80B1C8D8  80 7F 01 44 */	lwz r3, 0x144(r31)
/* 80B1C8DC  80 1F 01 48 */	lwz r0, 0x148(r31)
/* 80B1C8E0  90 61 00 7C */	stw r3, 0x7c(r1)
/* 80B1C8E4  90 01 00 80 */	stw r0, 0x80(r1)
/* 80B1C8E8  80 1F 01 4C */	lwz r0, 0x14c(r31)
/* 80B1C8EC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B1C8F0  80 7F 01 50 */	lwz r3, 0x150(r31)
/* 80B1C8F4  80 1F 01 54 */	lwz r0, 0x154(r31)
/* 80B1C8F8  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B1C8FC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B1C900  38 01 00 70 */	addi r0, r1, 0x70
/* 80B1C904  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B1C908  38 01 00 7C */	addi r0, r1, 0x7c
/* 80B1C90C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B1C910  80 7F 01 58 */	lwz r3, 0x158(r31)
/* 80B1C914  80 1F 01 5C */	lwz r0, 0x15c(r31)
/* 80B1C918  90 61 00 88 */	stw r3, 0x88(r1)
/* 80B1C91C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80B1C920  80 1F 01 60 */	lwz r0, 0x160(r31)
/* 80B1C924  90 01 00 90 */	stw r0, 0x90(r1)
/* 80B1C928  80 1F 01 64 */	lwz r0, 0x164(r31)
/* 80B1C92C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B1C930  38 01 00 88 */	addi r0, r1, 0x88
/* 80B1C934  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B1C938  80 7F 01 68 */	lwz r3, 0x168(r31)
/* 80B1C93C  80 1F 01 6C */	lwz r0, 0x16c(r31)
/* 80B1C940  90 61 00 94 */	stw r3, 0x94(r1)
/* 80B1C944  90 01 00 98 */	stw r0, 0x98(r1)
/* 80B1C948  80 1F 01 70 */	lwz r0, 0x170(r31)
/* 80B1C94C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80B1C950  80 7F 01 74 */	lwz r3, 0x174(r31)
/* 80B1C954  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 80B1C958  90 61 00 A0 */	stw r3, 0xa0(r1)
/* 80B1C95C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B1C960  80 1F 01 7C */	lwz r0, 0x17c(r31)
/* 80B1C964  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80B1C968  80 7F 01 80 */	lwz r3, 0x180(r31)
/* 80B1C96C  80 1F 01 84 */	lwz r0, 0x184(r31)
/* 80B1C970  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B1C974  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B1C978  38 01 00 94 */	addi r0, r1, 0x94
/* 80B1C97C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B1C980  38 01 00 A0 */	addi r0, r1, 0xa0
/* 80B1C984  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B1C988  80 7F 01 88 */	lwz r3, 0x188(r31)
/* 80B1C98C  80 1F 01 8C */	lwz r0, 0x18c(r31)
/* 80B1C990  90 61 00 AC */	stw r3, 0xac(r1)
/* 80B1C994  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80B1C998  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80B1C99C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80B1C9A0  80 1F 01 94 */	lwz r0, 0x194(r31)
/* 80B1C9A4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B1C9A8  38 01 00 AC */	addi r0, r1, 0xac
/* 80B1C9AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B1C9B0  38 A1 00 F0 */	addi r5, r1, 0xf0
/* 80B1C9B4  38 9F 01 94 */	addi r4, r31, 0x194
/* 80B1C9B8  38 00 00 04 */	li r0, 4
/* 80B1C9BC  7C 09 03 A6 */	mtctr r0
lbl_80B1C9C0:
/* 80B1C9C0  80 64 00 04 */	lwz r3, 4(r4)
/* 80B1C9C4  84 04 00 08 */	lwzu r0, 8(r4)
/* 80B1C9C8  90 65 00 04 */	stw r3, 4(r5)
/* 80B1C9CC  94 05 00 08 */	stwu r0, 8(r5)
/* 80B1C9D0  42 00 FF F0 */	bdnz lbl_80B1C9C0
/* 80B1C9D4  38 01 00 08 */	addi r0, r1, 8
/* 80B1C9D8  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80B1C9DC  38 01 00 0C */	addi r0, r1, 0xc
/* 80B1C9E0  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 80B1C9E4  38 01 00 10 */	addi r0, r1, 0x10
/* 80B1C9E8  90 01 00 FC */	stw r0, 0xfc(r1)
/* 80B1C9EC  38 01 00 14 */	addi r0, r1, 0x14
/* 80B1C9F0  90 01 01 00 */	stw r0, 0x100(r1)
/* 80B1C9F4  38 01 00 28 */	addi r0, r1, 0x28
/* 80B1C9F8  90 01 01 04 */	stw r0, 0x104(r1)
/* 80B1C9FC  38 01 00 18 */	addi r0, r1, 0x18
/* 80B1CA00  90 01 01 08 */	stw r0, 0x108(r1)
/* 80B1CA04  38 01 00 30 */	addi r0, r1, 0x30
/* 80B1CA08  90 01 01 0C */	stw r0, 0x10c(r1)
/* 80B1CA0C  38 01 00 1C */	addi r0, r1, 0x1c
/* 80B1CA10  90 01 01 10 */	stw r0, 0x110(r1)
/* 80B1CA14  A8 7D 09 E0 */	lha r3, 0x9e0(r29)
/* 80B1CA18  7C 60 07 35 */	extsh. r0, r3
/* 80B1CA1C  41 80 00 18 */	blt lbl_80B1CA34
/* 80B1CA20  2C 03 00 08 */	cmpwi r3, 8
/* 80B1CA24  40 80 00 10 */	bge lbl_80B1CA34
/* 80B1CA28  7F A3 EB 78 */	mr r3, r29
/* 80B1CA2C  38 81 00 F4 */	addi r4, r1, 0xf4
/* 80B1CA30  4B 63 68 35 */	bl playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_80B1CA34:
/* 80B1CA34  88 1D 11 5E */	lbz r0, 0x115e(r29)
/* 80B1CA38  28 00 00 00 */	cmplwi r0, 0
/* 80B1CA3C  41 82 00 64 */	beq lbl_80B1CAA0
/* 80B1CA40  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80B1CA44  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B1CA48  41 82 00 48 */	beq lbl_80B1CA90
/* 80B1CA4C  80 7D 0B D8 */	lwz r3, 0xbd8(r29)
/* 80B1CA50  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 80B1CA54  80 1D 11 48 */	lwz r0, 0x1148(r29)
/* 80B1CA58  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B1CA5C  41 82 00 28 */	beq lbl_80B1CA84
/* 80B1CA60  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80B1CA64  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B1CA68  80 7D 0B D8 */	lwz r3, 0xbd8(r29)
/* 80B1CA6C  38 80 00 00 */	li r4, 0
/* 80B1CA70  38 A0 00 00 */	li r5, 0
/* 80B1CA74  4B 4F 46 3D */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80B1CA78  80 7D 0B D8 */	lwz r3, 0xbd8(r29)
/* 80B1CA7C  D3 E3 00 18 */	stfs f31, 0x18(r3)
/* 80B1CA80  48 00 00 10 */	b lbl_80B1CA90
lbl_80B1CA84:
/* 80B1CA84  38 80 00 00 */	li r4, 0
/* 80B1CA88  38 A0 00 00 */	li r5, 0
/* 80B1CA8C  4B 4F 46 25 */	bl play__16mDoExt_McaMorfSOFUlSc
lbl_80B1CA90:
/* 80B1CA90  80 7D 11 48 */	lwz r3, 0x1148(r29)
/* 80B1CA94  38 00 EF 38 */	li r0, -4296
/* 80B1CA98  7C 60 00 38 */	and r0, r3, r0
/* 80B1CA9C  90 1D 11 48 */	stw r0, 0x1148(r29)
lbl_80B1CAA0:
/* 80B1CAA0  38 7F 00 00 */	addi r3, r31, 0
/* 80B1CAA4  C0 23 00 7C */	lfs f1, 0x7c(r3)
/* 80B1CAA8  C8 5F 01 C8 */	lfd f2, 0x1c8(r31)
/* 80B1CAAC  4B 84 FC D5 */	bl pow
/* 80B1CAB0  FF E0 08 18 */	frsp f31, f1
/* 80B1CAB4  38 7F 00 00 */	addi r3, r31, 0
/* 80B1CAB8  C0 23 00 80 */	lfs f1, 0x80(r3)
/* 80B1CABC  C8 5F 01 C8 */	lfd f2, 0x1c8(r31)
/* 80B1CAC0  4B 84 FC C1 */	bl pow
/* 80B1CAC4  FF C0 08 18 */	frsp f30, f1
/* 80B1CAC8  7F A3 EB 78 */	mr r3, r29
/* 80B1CACC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1CAD0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B1CAD4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B1CAD8  4B 4F DF BD */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B1CADC  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80B1CAE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B1CAE4  40 81 00 18 */	ble lbl_80B1CAFC
/* 80B1CAE8  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80B1CAEC  4C 40 13 82 */	cror 2, 0, 2
/* 80B1CAF0  40 82 00 0C */	bne lbl_80B1CAFC
/* 80B1CAF4  38 00 00 01 */	li r0, 1
/* 80B1CAF8  48 00 00 24 */	b lbl_80B1CB1C
lbl_80B1CAFC:
/* 80B1CAFC  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80B1CB00  40 81 00 18 */	ble lbl_80B1CB18
/* 80B1CB04  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B1CB08  4C 40 13 82 */	cror 2, 0, 2
/* 80B1CB0C  40 82 00 0C */	bne lbl_80B1CB18
/* 80B1CB10  38 00 00 00 */	li r0, 0
/* 80B1CB14  48 00 00 08 */	b lbl_80B1CB1C
lbl_80B1CB18:
/* 80B1CB18  38 00 FF FF */	li r0, -1
lbl_80B1CB1C:
/* 80B1CB1C  90 1D 13 78 */	stw r0, 0x1378(r29)
/* 80B1CB20  38 60 00 01 */	li r3, 1
/* 80B1CB24  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 80B1CB28  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 80B1CB2C  E3 C1 01 38 */	psq_l f30, 312(r1), 0, 0 /* qr0 */
/* 80B1CB30  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 80B1CB34  39 61 01 30 */	addi r11, r1, 0x130
/* 80B1CB38  4B 84 56 F1 */	bl _restgpr_29
/* 80B1CB3C  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80B1CB40  7C 08 03 A6 */	mtlr r0
/* 80B1CB44  38 21 01 50 */	addi r1, r1, 0x150
/* 80B1CB48  4E 80 00 20 */	blr 
