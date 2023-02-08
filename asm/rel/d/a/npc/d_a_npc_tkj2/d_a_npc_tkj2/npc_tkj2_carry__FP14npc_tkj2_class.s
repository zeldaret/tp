lbl_80B122AC:
/* 80B122AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B122B0  7C 08 02 A6 */	mflr r0
/* 80B122B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B122B8  39 61 00 30 */	addi r11, r1, 0x30
/* 80B122BC  4B 84 FF 1D */	bl _savegpr_28
/* 80B122C0  7C 7E 1B 78 */	mr r30, r3
/* 80B122C4  3C 60 80 B1 */	lis r3, lit_3648@ha /* 0x80B142DC@ha */
/* 80B122C8  3B E3 42 DC */	addi r31, r3, lit_3648@l /* 0x80B142DC@l */
/* 80B122CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B122D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B122D4  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80B122D8  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80B122DC  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80B122E0  38 A0 00 01 */	li r5, 1
/* 80B122E4  38 C0 20 00 */	li r6, 0x2000
/* 80B122E8  4B 75 E3 21 */	bl cLib_addCalcAngleS2__FPssss
/* 80B122EC  80 1E 08 B8 */	lwz r0, 0x8b8(r30)
/* 80B122F0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B122F4  90 1E 08 B8 */	stw r0, 0x8b8(r30)
/* 80B122F8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80B122FC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B12300  3B 80 00 00 */	li r28, 0
/* 80B12304  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B12308  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80B1230C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B12310  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80B12314  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B12318  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80B1231C  38 7E 08 50 */	addi r3, r30, 0x850
/* 80B12320  4B 75 16 3D */	bl ClrCcMove__9cCcD_SttsFv
/* 80B12324  A8 1E 06 0A */	lha r0, 0x60a(r30)
/* 80B12328  2C 00 00 01 */	cmpwi r0, 1
/* 80B1232C  41 82 00 38 */	beq lbl_80B12364
/* 80B12330  40 80 01 1C */	bge lbl_80B1244C
/* 80B12334  2C 00 00 00 */	cmpwi r0, 0
/* 80B12338  40 80 00 08 */	bge lbl_80B12340
/* 80B1233C  48 00 01 10 */	b lbl_80B1244C
lbl_80B12340:
/* 80B12340  7F C3 F3 78 */	mr r3, r30
/* 80B12344  38 80 00 09 */	li r4, 9
/* 80B12348  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80B1234C  38 A0 00 02 */	li r5, 2
/* 80B12350  FC 40 08 90 */	fmr f2, f1
/* 80B12354  4B FF EA CD */	bl anm_init__FP14npc_tkj2_classifUcf
/* 80B12358  A8 7E 06 0A */	lha r3, 0x60a(r30)
/* 80B1235C  38 03 00 01 */	addi r0, r3, 1
/* 80B12360  B0 1E 06 0A */	sth r0, 0x60a(r30)
lbl_80B12364:
/* 80B12364  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 80B12368  38 63 00 0C */	addi r3, r3, 0xc
/* 80B1236C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80B12370  4B 81 60 BD */	bl checkPass__12J3DFrameCtrlFf
/* 80B12374  2C 03 00 00 */	cmpwi r3, 0
/* 80B12378  41 82 00 2C */	beq lbl_80B123A4
/* 80B1237C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050038@ha */
/* 80B12380  38 03 00 38 */	addi r0, r3, 0x0038 /* 0x00050038@l */
/* 80B12384  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B12388  38 7E 09 E8 */	addi r3, r30, 0x9e8
/* 80B1238C  38 81 00 0C */	addi r4, r1, 0xc
/* 80B12390  38 A0 FF FF */	li r5, -1
/* 80B12394  81 9E 09 E8 */	lwz r12, 0x9e8(r30)
/* 80B12398  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B1239C  7D 89 03 A6 */	mtctr r12
/* 80B123A0  4E 80 04 21 */	bctrl 
lbl_80B123A4:
/* 80B123A4  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80B123A8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B123AC  41 82 00 2C */	beq lbl_80B123D8
/* 80B123B0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80B123B4  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80B123B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B123BC  41 82 00 1C */	beq lbl_80B123D8
/* 80B123C0  3C 60 80 B1 */	lis r3, l_HIO@ha /* 0x80B14510@ha */
/* 80B123C4  38 63 45 10 */	addi r3, r3, l_HIO@l /* 0x80B14510@l */
/* 80B123C8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80B123CC  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 80B123D0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B123D4  48 00 00 78 */	b lbl_80B1244C
lbl_80B123D8:
/* 80B123D8  38 7E 08 8C */	addi r3, r30, 0x88c
/* 80B123DC  4B 57 20 85 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80B123E0  28 03 00 00 */	cmplwi r3, 0
/* 80B123E4  41 82 00 3C */	beq lbl_80B12420
/* 80B123E8  38 7E 08 8C */	addi r3, r30, 0x88c
/* 80B123EC  4B 57 21 5D */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80B123F0  88 03 00 75 */	lbz r0, 0x75(r3)
/* 80B123F4  28 00 00 03 */	cmplwi r0, 3
/* 80B123F8  40 82 00 54 */	bne lbl_80B1244C
/* 80B123FC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80B12400  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 80B12404  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B12408  38 7E 08 8C */	addi r3, r30, 0x88c
/* 80B1240C  81 9E 08 C8 */	lwz r12, 0x8c8(r30)
/* 80B12410  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B12414  7D 89 03 A6 */	mtctr r12
/* 80B12418  4E 80 04 21 */	bctrl 
/* 80B1241C  48 00 00 30 */	b lbl_80B1244C
lbl_80B12420:
/* 80B12420  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80B12424  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80B12428  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B1242C  41 82 00 14 */	beq lbl_80B12440
/* 80B12430  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B12434  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 80B12438  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B1243C  48 00 00 10 */	b lbl_80B1244C
lbl_80B12440:
/* 80B12440  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B12444  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 80B12448  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80B1244C:
/* 80B1244C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B12450  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80B12454  40 82 00 E8 */	bne lbl_80B1253C
/* 80B12458  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 80B1245C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80B12460  41 82 00 54 */	beq lbl_80B124B4
/* 80B12464  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005003B@ha */
/* 80B12468  38 03 00 3B */	addi r0, r3, 0x003B /* 0x0005003B@l */
/* 80B1246C  90 01 00 08 */	stw r0, 8(r1)
/* 80B12470  38 7E 09 E8 */	addi r3, r30, 0x9e8
/* 80B12474  38 81 00 08 */	addi r4, r1, 8
/* 80B12478  38 A0 FF FF */	li r5, -1
/* 80B1247C  81 9E 09 E8 */	lwz r12, 0x9e8(r30)
/* 80B12480  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B12484  7D 89 03 A6 */	mtctr r12
/* 80B12488  4E 80 04 21 */	bctrl 
/* 80B1248C  38 60 00 00 */	li r3, 0
/* 80B12490  B0 7E 06 0A */	sth r3, 0x60a(r30)
/* 80B12494  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80B12498  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B1249C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80B124A0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B124A4  38 00 00 02 */	li r0, 2
/* 80B124A8  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80B124AC  B0 7E 06 0A */	sth r3, 0x60a(r30)
/* 80B124B0  48 00 00 5C */	b lbl_80B1250C
lbl_80B124B4:
/* 80B124B4  80 1E 06 A0 */	lwz r0, 0x6a0(r30)
/* 80B124B8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80B124BC  41 82 00 1C */	beq lbl_80B124D8
/* 80B124C0  38 00 00 00 */	li r0, 0
/* 80B124C4  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80B124C8  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80B124CC  38 00 00 0F */	li r0, 0xf
/* 80B124D0  B0 1E 06 10 */	sth r0, 0x610(r30)
/* 80B124D4  48 00 00 38 */	b lbl_80B1250C
lbl_80B124D8:
/* 80B124D8  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80B124DC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80B124E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B124E4  40 80 00 18 */	bge lbl_80B124FC
/* 80B124E8  38 00 00 06 */	li r0, 6
/* 80B124EC  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80B124F0  38 00 00 00 */	li r0, 0
/* 80B124F4  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80B124F8  48 00 00 14 */	b lbl_80B1250C
lbl_80B124FC:
/* 80B124FC  38 00 00 03 */	li r0, 3
/* 80B12500  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80B12504  38 00 00 00 */	li r0, 0
/* 80B12508  B0 1E 06 0A */	sth r0, 0x60a(r30)
lbl_80B1250C:
/* 80B1250C  7F C3 F3 78 */	mr r3, r30
/* 80B12510  4B 50 AC ED */	bl fopAcM_carryOffRevise__FP10fopAc_ac_c
/* 80B12514  3B 80 00 01 */	li r28, 1
/* 80B12518  38 61 00 10 */	addi r3, r1, 0x10
/* 80B1251C  7F C4 F3 78 */	mr r4, r30
/* 80B12520  4B FF FB BD */	bl return_pos_get__FP14npc_tkj2_class
/* 80B12524  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B12528  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80B1252C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B12530  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80B12534  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B12538  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
lbl_80B1253C:
/* 80B1253C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B12540  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80B12544  41 82 00 70 */	beq lbl_80B125B4
/* 80B12548  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1254C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B12550  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80B12554  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B12558  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80B1255C  7D 89 03 A6 */	mtctr r12
/* 80B12560  4E 80 04 21 */	bctrl 
/* 80B12564  2C 03 00 00 */	cmpwi r3, 0
/* 80B12568  41 82 00 4C */	beq lbl_80B125B4
/* 80B1256C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B12570  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B12574  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80B12578  3C 80 80 B1 */	lis r4, d_a_npc_tkj2__stringBase0@ha /* 0x80B143AC@ha */
/* 80B1257C  38 84 43 AC */	addi r4, r4, d_a_npc_tkj2__stringBase0@l /* 0x80B143AC@l */
/* 80B12580  38 84 00 05 */	addi r4, r4, 5
/* 80B12584  4B 85 64 11 */	bl strcmp
/* 80B12588  2C 03 00 00 */	cmpwi r3, 0
/* 80B1258C  40 82 00 28 */	bne lbl_80B125B4
/* 80B12590  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80B12594  2C 00 00 01 */	cmpwi r0, 1
/* 80B12598  40 82 00 1C */	bne lbl_80B125B4
/* 80B1259C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B125A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B125A4  38 80 00 44 */	li r4, 0x44
/* 80B125A8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80B125AC  7C 05 07 74 */	extsb r5, r0
/* 80B125B0  4B 52 2C 51 */	bl onSwitch__10dSv_info_cFii
lbl_80B125B4:
/* 80B125B4  7F 83 E3 78 */	mr r3, r28
/* 80B125B8  39 61 00 30 */	addi r11, r1, 0x30
/* 80B125BC  4B 84 FC 69 */	bl _restgpr_28
/* 80B125C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B125C4  7C 08 03 A6 */	mtlr r0
/* 80B125C8  38 21 00 30 */	addi r1, r1, 0x30
/* 80B125CC  4E 80 00 20 */	blr 
