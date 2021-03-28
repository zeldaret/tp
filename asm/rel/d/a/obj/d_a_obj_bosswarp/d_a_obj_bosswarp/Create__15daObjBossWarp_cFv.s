lbl_805797B8:
/* 805797B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805797BC  7C 08 02 A6 */	mflr r0
/* 805797C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805797C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805797C8  4B DE 8A 14 */	b _savegpr_29
/* 805797CC  7C 7E 1B 78 */	mr r30, r3
/* 805797D0  3C 80 80 58 */	lis r4, cNullVec__6Z2Calc@ha
/* 805797D4  3B E4 B6 58 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 805797D8  4B FF FF 29 */	bl initBaseMtx__15daObjBossWarp_cFv
/* 805797DC  4B FF FE 7D */	bl getNowLevel__Fv
/* 805797E0  7C 7D 1B 78 */	mr r29, r3
/* 805797E4  2C 1D FF FF */	cmpwi r29, -1
/* 805797E8  41 82 00 0C */	beq lbl_805797F4
/* 805797EC  2C 1D 00 08 */	cmpwi r29, 8
/* 805797F0  40 82 00 10 */	bne lbl_80579800
lbl_805797F4:
/* 805797F4  38 00 FF FF */	li r0, -1
/* 805797F8  B0 1E 05 92 */	sth r0, 0x592(r30)
/* 805797FC  48 00 00 2C */	b lbl_80579828
lbl_80579800:
/* 80579800  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80579804  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80579808  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8057980C  7F C4 F3 78 */	mr r4, r30
/* 80579810  57 A0 10 3A */	slwi r0, r29, 2
/* 80579814  38 BF 00 24 */	addi r5, r31, 0x24
/* 80579818  7C A5 00 2E */	lwzx r5, r5, r0
/* 8057981C  38 C0 00 FF */	li r6, 0xff
/* 80579820  4B AC DF 38 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80579824  B0 7E 05 92 */	sth r3, 0x592(r30)
lbl_80579828:
/* 80579828  38 00 00 FF */	li r0, 0xff
/* 8057982C  98 1E 05 94 */	stb r0, 0x594(r30)
/* 80579830  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80579834  54 00 2F FF */	rlwinm. r0, r0, 5, 0x1f, 0x1f
/* 80579838  41 82 00 0C */	beq lbl_80579844
/* 8057983C  2C 1D 00 08 */	cmpwi r29, 8
/* 80579840  40 82 00 48 */	bne lbl_80579888
lbl_80579844:
/* 80579844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80579848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057984C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80579850  7F C4 F3 78 */	mr r4, r30
/* 80579854  3C A0 80 58 */	lis r5, struct_8057B4EC+0x0@ha
/* 80579858  38 A5 B4 EC */	addi r5, r5, struct_8057B4EC+0x0@l
/* 8057985C  38 A5 00 A9 */	addi r5, r5, 0xa9
/* 80579860  38 C0 00 FF */	li r6, 0xff
/* 80579864  4B AC DE F4 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80579868  B0 7E 05 96 */	sth r3, 0x596(r30)
/* 8057986C  38 00 00 FF */	li r0, 0xff
/* 80579870  98 1E 05 98 */	stb r0, 0x598(r30)
/* 80579874  38 00 00 03 */	li r0, 3
/* 80579878  98 1E 05 90 */	stb r0, 0x590(r30)
/* 8057987C  7F C3 F3 78 */	mr r3, r30
/* 80579880  48 00 05 19 */	bl set_appear__15daObjBossWarp_cFv
/* 80579884  48 00 00 3C */	b lbl_805798C0
lbl_80579888:
/* 80579888  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057988C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80579890  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80579894  7F C4 F3 78 */	mr r4, r30
/* 80579898  3C A0 80 58 */	lis r5, struct_8057B4EC+0x0@ha
/* 8057989C  38 A5 B4 EC */	addi r5, r5, struct_8057B4EC+0x0@l
/* 805798A0  38 A5 00 B5 */	addi r5, r5, 0xb5
/* 805798A4  38 C0 00 FF */	li r6, 0xff
/* 805798A8  4B AC DE B0 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 805798AC  B0 7E 05 96 */	sth r3, 0x596(r30)
/* 805798B0  38 00 00 FF */	li r0, 0xff
/* 805798B4  98 1E 05 98 */	stb r0, 0x598(r30)
/* 805798B8  38 00 00 00 */	li r0, 0
/* 805798BC  98 1E 05 90 */	stb r0, 0x590(r30)
lbl_805798C0:
/* 805798C0  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 805798C4  90 1E 01 00 */	stw r0, 0x100(r30)
/* 805798C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805798CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805798D0  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 805798D4  7F A3 EB 78 */	mr r3, r29
/* 805798D8  7F C4 F3 78 */	mr r4, r30
/* 805798DC  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 805798E0  38 C0 00 FF */	li r6, 0xff
/* 805798E4  4B AC DE 74 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 805798E8  B0 7E 05 C8 */	sth r3, 0x5c8(r30)
/* 805798EC  7F A3 EB 78 */	mr r3, r29
/* 805798F0  7F C4 F3 78 */	mr r4, r30
/* 805798F4  80 BF 00 4C */	lwz r5, 0x4c(r31)
/* 805798F8  38 C0 00 FF */	li r6, 0xff
/* 805798FC  4B AC DE 5C */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80579900  B0 7E 06 1E */	sth r3, 0x61e(r30)
/* 80579904  3C 60 80 58 */	lis r3, lit_3740@ha
/* 80579908  C0 03 B4 34 */	lfs f0, lit_3740@l(r3)
/* 8057990C  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 80579910  7F C3 F3 78 */	mr r3, r30
/* 80579914  48 00 06 E5 */	bl execute__15daObjBossWarp_cFv
/* 80579918  38 60 00 01 */	li r3, 1
/* 8057991C  39 61 00 20 */	addi r11, r1, 0x20
/* 80579920  4B DE 89 08 */	b _restgpr_29
/* 80579924  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80579928  7C 08 03 A6 */	mtlr r0
/* 8057992C  38 21 00 20 */	addi r1, r1, 0x20
/* 80579930  4E 80 00 20 */	blr 
