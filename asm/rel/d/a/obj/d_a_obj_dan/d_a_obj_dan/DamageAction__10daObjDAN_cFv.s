lbl_80BDAC10:
/* 80BDAC10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDAC14  7C 08 02 A6 */	mflr r0
/* 80BDAC18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDAC1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BDAC20  4B 78 75 B9 */	bl _savegpr_28
/* 80BDAC24  7C 7C 1B 78 */	mr r28, r3
/* 80BDAC28  3C 80 80 BE */	lis r4, lit_3775@ha /* 0x80BDC3B0@ha */
/* 80BDAC2C  3B C4 C3 B0 */	addi r30, r4, lit_3775@l /* 0x80BDC3B0@l */
/* 80BDAC30  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDAC34  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDAC38  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80BDAC3C  88 03 07 69 */	lbz r0, 0x769(r3)
/* 80BDAC40  2C 00 00 01 */	cmpwi r0, 1
/* 80BDAC44  41 82 01 0C */	beq lbl_80BDAD50
/* 80BDAC48  40 80 00 10 */	bge lbl_80BDAC58
/* 80BDAC4C  2C 00 00 00 */	cmpwi r0, 0
/* 80BDAC50  40 80 00 14 */	bge lbl_80BDAC64
/* 80BDAC54  48 00 03 68 */	b lbl_80BDAFBC
lbl_80BDAC58:
/* 80BDAC58  2C 00 00 03 */	cmpwi r0, 3
/* 80BDAC5C  40 80 03 60 */	bge lbl_80BDAFBC
/* 80BDAC60  48 00 02 B8 */	b lbl_80BDAF18
lbl_80BDAC64:
/* 80BDAC64  7F A4 EB 78 */	mr r4, r29
/* 80BDAC68  4B 43 FC FD */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BDAC6C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80BDAC70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDAC74  40 80 03 48 */	bge lbl_80BDAFBC
/* 80BDAC78  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80BDAC7C  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 80BDAC80  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80BDAC84  40 81 03 38 */	ble lbl_80BDAFBC
/* 80BDAC88  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80BDAC8C  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80BDAC90  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80BDAC94  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80BDAC98  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80BDAC9C  B0 1C 07 78 */	sth r0, 0x778(r28)
/* 80BDACA0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80BDACA4  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80BDACA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BDACAC  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80BDACB0  88 7C 07 69 */	lbz r3, 0x769(r28)
/* 80BDACB4  38 03 00 01 */	addi r0, r3, 1
/* 80BDACB8  98 1C 07 69 */	stb r0, 0x769(r28)
/* 80BDACBC  D0 5C 07 70 */	stfs f2, 0x770(r28)
/* 80BDACC0  3C 60 80 BE */	lis r3, d_a_obj_dan__stringBase0@ha /* 0x80BDC46C@ha */
/* 80BDACC4  38 63 C4 6C */	addi r3, r3, d_a_obj_dan__stringBase0@l /* 0x80BDC46C@l */
/* 80BDACC8  38 80 00 06 */	li r4, 6
/* 80BDACCC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDACD0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDACD4  3C A5 00 02 */	addis r5, r5, 2
/* 80BDACD8  38 C0 00 80 */	li r6, 0x80
/* 80BDACDC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BDACE0  4B 46 16 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BDACE4  7C 64 1B 78 */	mr r4, r3
/* 80BDACE8  80 7C 08 44 */	lwz r3, 0x844(r28)
/* 80BDACEC  38 A0 00 02 */	li r5, 2
/* 80BDACF0  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80BDACF4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80BDACF8  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 80BDACFC  C0 9E 00 64 */	lfs f4, 0x64(r30)
/* 80BDAD00  4B 43 61 71 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80BDAD04  38 00 00 64 */	li r0, 0x64
/* 80BDAD08  B0 1C 07 6A */	sth r0, 0x76a(r28)
/* 80BDAD0C  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80BDAD10  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 80BDAD14  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80BDAD18  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80BDAD1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BDAD20  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80BDAD24  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80BDAD28  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80BDAD2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDAD30  40 81 00 0C */	ble lbl_80BDAD3C
/* 80BDAD34  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80BDAD38  48 00 02 84 */	b lbl_80BDAFBC
lbl_80BDAD3C:
/* 80BDAD3C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80BDAD40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDAD44  40 80 02 78 */	bge lbl_80BDAFBC
/* 80BDAD48  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80BDAD4C  48 00 02 70 */	b lbl_80BDAFBC
lbl_80BDAD50:
/* 80BDAD50  80 1C 08 B4 */	lwz r0, 0x8b4(r28)
/* 80BDAD54  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80BDAD58  41 82 00 6C */	beq lbl_80BDADC4
/* 80BDAD5C  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80BDAD60  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80BDAD64  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BDAD68  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80BDAD6C  80 1C 08 B4 */	lwz r0, 0x8b4(r28)
/* 80BDAD70  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80BDAD74  90 1C 08 B4 */	stw r0, 0x8b4(r28)
/* 80BDAD78  80 7C 07 AC */	lwz r3, 0x7ac(r28)
/* 80BDAD7C  38 03 00 01 */	addi r0, r3, 1
/* 80BDAD80  90 1C 07 AC */	stw r0, 0x7ac(r28)
/* 80BDAD84  80 1C 07 AC */	lwz r0, 0x7ac(r28)
/* 80BDAD88  2C 00 00 05 */	cmpwi r0, 5
/* 80BDAD8C  40 81 00 20 */	ble lbl_80BDADAC
/* 80BDAD90  38 00 00 00 */	li r0, 0
/* 80BDAD94  90 1C 07 AC */	stw r0, 0x7ac(r28)
/* 80BDAD98  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80BDAD9C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80BDADA0  D0 1C 07 A0 */	stfs f0, 0x7a0(r28)
/* 80BDADA4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80BDADA8  D0 1C 07 70 */	stfs f0, 0x770(r28)
lbl_80BDADAC:
/* 80BDADAC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80BDADB0  D0 1C 04 A8 */	stfs f0, 0x4a8(r28)
/* 80BDADB4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80BDADB8  D0 1C 04 AC */	stfs f0, 0x4ac(r28)
/* 80BDADBC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80BDADC0  D0 1C 04 B0 */	stfs f0, 0x4b0(r28)
lbl_80BDADC4:
/* 80BDADC4  7F 83 E3 78 */	mr r3, r28
/* 80BDADC8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80BDADCC  4B 43 FB 99 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BDADD0  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80BDADD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDADD8  40 80 00 8C */	bge lbl_80BDAE64
/* 80BDADDC  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80BDADE0  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80BDADE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDADE8  40 81 00 7C */	ble lbl_80BDAE64
/* 80BDADEC  A8 1C 07 6C */	lha r0, 0x76c(r28)
/* 80BDADF0  2C 00 00 00 */	cmpwi r0, 0
/* 80BDADF4  40 82 00 70 */	bne lbl_80BDAE64
/* 80BDADF8  80 1C 08 B4 */	lwz r0, 0x8b4(r28)
/* 80BDADFC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80BDAE00  41 82 00 64 */	beq lbl_80BDAE64
/* 80BDAE04  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80BDAE08  B0 1C 07 78 */	sth r0, 0x778(r28)
/* 80BDAE0C  A8 1C 07 78 */	lha r0, 0x778(r28)
/* 80BDAE10  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80BDAE14  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80BDAE18  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80BDAE1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BDAE20  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80BDAE24  38 00 00 64 */	li r0, 0x64
/* 80BDAE28  B0 1C 07 6A */	sth r0, 0x76a(r28)
/* 80BDAE2C  38 00 00 00 */	li r0, 0
/* 80BDAE30  90 1C 07 AC */	stw r0, 0x7ac(r28)
/* 80BDAE34  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80BDAE38  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80BDAE3C  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80BDAE40  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80BDAE44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDAE48  40 81 00 0C */	ble lbl_80BDAE54
/* 80BDAE4C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80BDAE50  48 00 00 14 */	b lbl_80BDAE64
lbl_80BDAE54:
/* 80BDAE54  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80BDAE58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDAE5C  40 80 00 08 */	bge lbl_80BDAE64
/* 80BDAE60  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_80BDAE64:
/* 80BDAE64  A8 1C 07 6A */	lha r0, 0x76a(r28)
/* 80BDAE68  2C 00 00 00 */	cmpwi r0, 0
/* 80BDAE6C  40 82 00 8C */	bne lbl_80BDAEF8
/* 80BDAE70  7F 83 E3 78 */	mr r3, r28
/* 80BDAE74  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80BDAE78  4B 43 FA ED */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BDAE7C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80BDAE80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDAE84  40 81 00 74 */	ble lbl_80BDAEF8
/* 80BDAE88  38 00 00 00 */	li r0, 0
/* 80BDAE8C  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80BDAE90  3C 60 80 BE */	lis r3, d_a_obj_dan__stringBase0@ha /* 0x80BDC46C@ha */
/* 80BDAE94  38 63 C4 6C */	addi r3, r3, d_a_obj_dan__stringBase0@l /* 0x80BDC46C@l */
/* 80BDAE98  38 80 00 07 */	li r4, 7
/* 80BDAE9C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDAEA0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDAEA4  3C A5 00 02 */	addis r5, r5, 2
/* 80BDAEA8  38 C0 00 80 */	li r6, 0x80
/* 80BDAEAC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BDAEB0  4B 46 14 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BDAEB4  7C 64 1B 78 */	mr r4, r3
/* 80BDAEB8  80 7C 08 44 */	lwz r3, 0x844(r28)
/* 80BDAEBC  38 A0 00 00 */	li r5, 0
/* 80BDAEC0  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80BDAEC4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80BDAEC8  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 80BDAECC  C0 9E 00 64 */	lfs f4, 0x64(r30)
/* 80BDAED0  4B 43 5F A1 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80BDAED4  88 7C 07 69 */	lbz r3, 0x769(r28)
/* 80BDAED8  38 03 00 01 */	addi r0, r3, 1
/* 80BDAEDC  98 1C 07 69 */	stb r0, 0x769(r28)
/* 80BDAEE0  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80BDAEE4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80BDAEE8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80BDAEEC  D0 1C 07 70 */	stfs f0, 0x770(r28)
/* 80BDAEF0  38 00 00 00 */	li r0, 0
/* 80BDAEF4  90 1C 07 AC */	stw r0, 0x7ac(r28)
lbl_80BDAEF8:
/* 80BDAEF8  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80BDAEFC  C0 1C 04 FC */	lfs f0, 0x4fc(r28)
/* 80BDAF00  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BDAF04  41 82 00 B8 */	beq lbl_80BDAFBC
/* 80BDAF08  A8 7C 07 8A */	lha r3, 0x78a(r28)
/* 80BDAF0C  38 03 05 00 */	addi r0, r3, 0x500
/* 80BDAF10  B0 1C 07 8A */	sth r0, 0x78a(r28)
/* 80BDAF14  48 00 00 A8 */	b lbl_80BDAFBC
lbl_80BDAF18:
/* 80BDAF18  38 7C 07 8A */	addi r3, r28, 0x78a
/* 80BDAF1C  38 80 00 00 */	li r4, 0
/* 80BDAF20  38 A0 05 00 */	li r5, 0x500
/* 80BDAF24  4B 69 5C 6D */	bl cLib_chaseAngleS__FPsss
/* 80BDAF28  2C 03 00 00 */	cmpwi r3, 0
/* 80BDAF2C  41 82 00 90 */	beq lbl_80BDAFBC
/* 80BDAF30  80 7C 08 44 */	lwz r3, 0x844(r28)
/* 80BDAF34  38 80 00 01 */	li r4, 1
/* 80BDAF38  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80BDAF3C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BDAF40  40 82 00 18 */	bne lbl_80BDAF58
/* 80BDAF44  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80BDAF48  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80BDAF4C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BDAF50  41 82 00 08 */	beq lbl_80BDAF58
/* 80BDAF54  38 80 00 00 */	li r4, 0
lbl_80BDAF58:
/* 80BDAF58  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80BDAF5C  41 82 00 60 */	beq lbl_80BDAFBC
/* 80BDAF60  38 00 00 01 */	li r0, 1
/* 80BDAF64  98 1C 07 68 */	stb r0, 0x768(r28)
/* 80BDAF68  38 00 00 00 */	li r0, 0
/* 80BDAF6C  98 1C 07 69 */	stb r0, 0x769(r28)
/* 80BDAF70  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80BDAF74  D0 1C 07 70 */	stfs f0, 0x770(r28)
/* 80BDAF78  3C 60 80 BE */	lis r3, d_a_obj_dan__stringBase0@ha /* 0x80BDC46C@ha */
/* 80BDAF7C  38 63 C4 6C */	addi r3, r3, d_a_obj_dan__stringBase0@l /* 0x80BDC46C@l */
/* 80BDAF80  38 80 00 08 */	li r4, 8
/* 80BDAF84  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDAF88  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDAF8C  3C A5 00 02 */	addis r5, r5, 2
/* 80BDAF90  38 C0 00 80 */	li r6, 0x80
/* 80BDAF94  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BDAF98  4B 46 13 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BDAF9C  7C 64 1B 78 */	mr r4, r3
/* 80BDAFA0  80 7C 08 44 */	lwz r3, 0x844(r28)
/* 80BDAFA4  38 A0 00 02 */	li r5, 2
/* 80BDAFA8  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80BDAFAC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80BDAFB0  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 80BDAFB4  C0 9E 00 64 */	lfs f4, 0x64(r30)
/* 80BDAFB8  4B 43 5E B9 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80BDAFBC:
/* 80BDAFBC  7F 83 E3 78 */	mr r3, r28
/* 80BDAFC0  4B FF FA 7D */	bl SpeedSet__10daObjDAN_cFv
/* 80BDAFC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80BDAFC8  4B 78 72 5D */	bl _restgpr_28
/* 80BDAFCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDAFD0  7C 08 03 A6 */	mtlr r0
/* 80BDAFD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDAFD8  4E 80 00 20 */	blr 
