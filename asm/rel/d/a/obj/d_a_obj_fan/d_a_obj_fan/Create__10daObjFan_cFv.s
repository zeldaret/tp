lbl_80BE4F08:
/* 80BE4F08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BE4F0C  7C 08 02 A6 */	mflr r0
/* 80BE4F10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE4F14  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE4F18  4B 77 D2 B9 */	bl _savegpr_26
/* 80BE4F1C  7C 7A 1B 78 */	mr r26, r3
/* 80BE4F20  38 00 20 00 */	li r0, 0x2000
/* 80BE4F24  B0 03 0A CE */	sth r0, 0xace(r3)
/* 80BE4F28  A8 83 04 B4 */	lha r4, 0x4b4(r3)
/* 80BE4F2C  38 04 C0 00 */	addi r0, r4, -16384
/* 80BE4F30  B0 03 04 B4 */	sth r0, 0x4b4(r3)
/* 80BE4F34  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 80BE4F38  B0 03 04 DC */	sth r0, 0x4dc(r3)
/* 80BE4F3C  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 80BE4F40  B0 03 04 E4 */	sth r0, 0x4e4(r3)
/* 80BE4F44  4B FF FE C5 */	bl initBaseMtx__10daObjFan_cFv
/* 80BE4F48  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80BE4F4C  38 03 00 24 */	addi r0, r3, 0x24
/* 80BE4F50  90 1A 05 04 */	stw r0, 0x504(r26)
/* 80BE4F54  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80BE4F58  80 83 00 04 */	lwz r4, 4(r3)
/* 80BE4F5C  7F 43 D3 78 */	mr r3, r26
/* 80BE4F60  4B 43 56 19 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BE4F64  38 7A 05 B0 */	addi r3, r26, 0x5b0
/* 80BE4F68  38 80 00 FF */	li r4, 0xff
/* 80BE4F6C  38 A0 00 FF */	li r5, 0xff
/* 80BE4F70  7F 46 D3 78 */	mr r6, r26
/* 80BE4F74  4B 49 E8 ED */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BE4F78  3B 60 00 00 */	li r27, 0
/* 80BE4F7C  3B E0 00 00 */	li r31, 0
/* 80BE4F80  3C 60 80 BE */	lis r3, l_sph_src@ha /* 0x80BE5DD0@ha */
/* 80BE4F84  3B A3 5D D0 */	addi r29, r3, l_sph_src@l /* 0x80BE5DD0@l */
/* 80BE4F88  3B DA 05 B0 */	addi r30, r26, 0x5b0
lbl_80BE4F8C:
/* 80BE4F8C  7F 9A FA 14 */	add r28, r26, r31
/* 80BE4F90  38 7C 05 EC */	addi r3, r28, 0x5ec
/* 80BE4F94  7F A4 EB 78 */	mr r4, r29
/* 80BE4F98  4B 49 FA 9D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BE4F9C  93 DC 06 30 */	stw r30, 0x630(r28)
/* 80BE4FA0  3B 7B 00 01 */	addi r27, r27, 1
/* 80BE4FA4  2C 1B 00 04 */	cmpwi r27, 4
/* 80BE4FA8  3B FF 01 38 */	addi r31, r31, 0x138
/* 80BE4FAC  41 80 FF E0 */	blt lbl_80BE4F8C
/* 80BE4FB0  7F 43 D3 78 */	mr r3, r26
/* 80BE4FB4  4B 49 39 9D */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BE4FB8  38 60 00 01 */	li r3, 1
/* 80BE4FBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE4FC0  4B 77 D2 5D */	bl _restgpr_26
/* 80BE4FC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE4FC8  7C 08 03 A6 */	mtlr r0
/* 80BE4FCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE4FD0  4E 80 00 20 */	blr 
