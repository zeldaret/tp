lbl_80A3DCEC:
/* 80A3DCEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A3DCF0  7C 08 02 A6 */	mflr r0
/* 80A3DCF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A3DCF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A3DCFC  4B 92 44 D9 */	bl _savegpr_27
/* 80A3DD00  7C 7D 1B 78 */	mr r29, r3
/* 80A3DD04  7C 9B 23 78 */	mr r27, r4
/* 80A3DD08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3DD0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A3DD10  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80A3DD14  3B E0 00 00 */	li r31, 0
/* 80A3DD18  3B C0 FF FF */	li r30, -1
/* 80A3DD1C  7F 83 E3 78 */	mr r3, r28
/* 80A3DD20  3C A0 80 A4 */	lis r5, d_a_npc_kn__stringBase0@ha /* 0x80A40AF8@ha */
/* 80A3DD24  38 A5 0A F8 */	addi r5, r5, d_a_npc_kn__stringBase0@l /* 0x80A40AF8@l */
/* 80A3DD28  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A3DD2C  38 C0 00 03 */	li r6, 3
/* 80A3DD30  4B 60 A3 BD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A3DD34  28 03 00 00 */	cmplwi r3, 0
/* 80A3DD38  41 82 00 08 */	beq lbl_80A3DD40
/* 80A3DD3C  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80A3DD40:
/* 80A3DD40  7F 83 E3 78 */	mr r3, r28
/* 80A3DD44  7F 64 DB 78 */	mr r4, r27
/* 80A3DD48  4B 60 A0 05 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A3DD4C  2C 03 00 00 */	cmpwi r3, 0
/* 80A3DD50  41 82 01 00 */	beq lbl_80A3DE50
/* 80A3DD54  2C 1E 00 14 */	cmpwi r30, 0x14
/* 80A3DD58  41 82 00 F8 */	beq lbl_80A3DE50
/* 80A3DD5C  40 80 00 1C */	bge lbl_80A3DD78
/* 80A3DD60  2C 1E 00 0A */	cmpwi r30, 0xa
/* 80A3DD64  41 82 00 68 */	beq lbl_80A3DDCC
/* 80A3DD68  40 80 00 E8 */	bge lbl_80A3DE50
/* 80A3DD6C  2C 1E 00 00 */	cmpwi r30, 0
/* 80A3DD70  41 82 00 14 */	beq lbl_80A3DD84
/* 80A3DD74  48 00 00 DC */	b lbl_80A3DE50
lbl_80A3DD78:
/* 80A3DD78  2C 1E 00 1E */	cmpwi r30, 0x1e
/* 80A3DD7C  41 82 00 80 */	beq lbl_80A3DDFC
/* 80A3DD80  48 00 00 D0 */	b lbl_80A3DE50
lbl_80A3DD84:
/* 80A3DD84  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A3DD88  2C 00 00 01 */	cmpwi r0, 1
/* 80A3DD8C  41 82 00 2C */	beq lbl_80A3DDB8
/* 80A3DD90  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A3DD94  4B 70 79 69 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A3DD98  38 00 00 00 */	li r0, 0
/* 80A3DD9C  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A3DDA0  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A3DDA4  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A3DDA8  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A3DDAC  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A3DDB0  38 00 00 01 */	li r0, 1
/* 80A3DDB4  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A3DDB8:
/* 80A3DDB8  38 00 00 00 */	li r0, 0
/* 80A3DDBC  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A3DDC0  38 00 00 01 */	li r0, 1
/* 80A3DDC4  98 1D 15 AE */	stb r0, 0x15ae(r29)
/* 80A3DDC8  48 00 00 88 */	b lbl_80A3DE50
lbl_80A3DDCC:
/* 80A3DDCC  7F A3 EB 78 */	mr r3, r29
/* 80A3DDD0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3DDD4  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A3DDD8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A3DDDC  4B 5D C9 35 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3DDE0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A3DDE4  3C 63 00 01 */	addis r3, r3, 1
/* 80A3DDE8  38 03 80 00 */	addi r0, r3, -32768
/* 80A3DDEC  B0 04 06 06 */	sth r0, 0x606(r4)
/* 80A3DDF0  38 00 00 34 */	li r0, 0x34
/* 80A3DDF4  90 1D 0D EC */	stw r0, 0xdec(r29)
/* 80A3DDF8  48 00 00 58 */	b lbl_80A3DE50
lbl_80A3DDFC:
/* 80A3DDFC  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A3DE00  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A3DE04  4B 70 7A 95 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3DE08  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A3DE0C  38 00 00 09 */	li r0, 9
/* 80A3DE10  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A3DE14  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A3DE18  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A3DE1C  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
/* 80A3DE20  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A3DE24  2C 00 00 01 */	cmpwi r0, 1
/* 80A3DE28  41 82 00 28 */	beq lbl_80A3DE50
/* 80A3DE2C  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A3DE30  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A3DE34  4B 70 7A 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3DE38  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A3DE3C  38 00 00 01 */	li r0, 1
/* 80A3DE40  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A3DE44  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A3DE48  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A3DE4C  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A3DE50:
/* 80A3DE50  2C 1E 00 0A */	cmpwi r30, 0xa
/* 80A3DE54  41 82 00 1C */	beq lbl_80A3DE70
/* 80A3DE58  40 80 00 4C */	bge lbl_80A3DEA4
/* 80A3DE5C  2C 1E 00 00 */	cmpwi r30, 0
/* 80A3DE60  41 82 00 08 */	beq lbl_80A3DE68
/* 80A3DE64  48 00 00 40 */	b lbl_80A3DEA4
lbl_80A3DE68:
/* 80A3DE68  3B E0 00 01 */	li r31, 1
/* 80A3DE6C  48 00 00 3C */	b lbl_80A3DEA8
lbl_80A3DE70:
/* 80A3DE70  38 7D 0D EC */	addi r3, r29, 0xdec
/* 80A3DE74  4B FF DE D5 */	bl func_80A3BD48
/* 80A3DE78  2C 03 00 00 */	cmpwi r3, 0
/* 80A3DE7C  40 82 00 2C */	bne lbl_80A3DEA8
/* 80A3DE80  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80A3DE84  4B 5E 34 D5 */	bl fpcEx_SearchByID__FUi
/* 80A3DE88  28 03 00 00 */	cmplwi r3, 0
/* 80A3DE8C  41 82 00 08 */	beq lbl_80A3DE94
/* 80A3DE90  4B 5D BD ED */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80A3DE94:
/* 80A3DE94  38 00 00 00 */	li r0, 0
/* 80A3DE98  98 1D 0E 2C */	stb r0, 0xe2c(r29)
/* 80A3DE9C  3B E0 00 01 */	li r31, 1
/* 80A3DEA0  48 00 00 08 */	b lbl_80A3DEA8
lbl_80A3DEA4:
/* 80A3DEA4  3B E0 00 01 */	li r31, 1
lbl_80A3DEA8:
/* 80A3DEA8  7F E3 FB 78 */	mr r3, r31
/* 80A3DEAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A3DEB0  4B 92 43 71 */	bl _restgpr_27
/* 80A3DEB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A3DEB8  7C 08 03 A6 */	mtlr r0
/* 80A3DEBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A3DEC0  4E 80 00 20 */	blr 
