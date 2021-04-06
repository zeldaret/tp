lbl_8047DD88:
/* 8047DD88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047DD8C  7C 08 02 A6 */	mflr r0
/* 8047DD90  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047DD94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8047DD98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8047DD9C  7C 7F 1B 78 */	mr r31, r3
/* 8047DDA0  7C 9E 23 78 */	mr r30, r4
/* 8047DDA4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8047DDA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8047DDAC  C0 44 00 04 */	lfs f2, 4(r4)
/* 8047DDB0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8047DDB4  C0 04 00 08 */	lfs f0, 8(r4)
/* 8047DDB8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8047DDBC  3C 60 80 48 */	lis r3, lit_3754@ha /* 0x804810F0@ha */
/* 8047DDC0  C0 03 10 F0 */	lfs f0, lit_3754@l(r3)  /* 0x804810F0@l */
/* 8047DDC4  EC 20 10 2A */	fadds f1, f0, f2
/* 8047DDC8  3C 60 80 48 */	lis r3, lit_3755@ha /* 0x804810F4@ha */
/* 8047DDCC  C0 03 10 F4 */	lfs f0, lit_3755@l(r3)  /* 0x804810F4@l */
/* 8047DDD0  EC 02 00 28 */	fsubs f0, f2, f0
/* 8047DDD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8047DDD8  3C 60 80 48 */	lis r3, M_wrt_work__Q212daObjMovebox5Bgc_c@ha /* 0x8048206C@ha */
/* 8047DDDC  38 63 20 6C */	addi r3, r3, M_wrt_work__Q212daObjMovebox5Bgc_c@l /* 0x8048206C@l */
/* 8047DDE0  38 81 00 08 */	addi r4, r1, 8
/* 8047DDE4  4B BF AD AD */	bl Set__14dBgS_SplGrpChkFR4cXyzf
/* 8047DDE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047DDEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047DDF0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8047DDF4  3C 80 80 48 */	lis r4, M_wrt_work__Q212daObjMovebox5Bgc_c@ha /* 0x8048206C@ha */
/* 8047DDF8  38 84 20 6C */	addi r4, r4, M_wrt_work__Q212daObjMovebox5Bgc_c@l /* 0x8048206C@l */
/* 8047DDFC  4B BF 77 69 */	bl SplGrpChk__4dBgSFP14dBgS_SplGrpChk
/* 8047DE00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8047DE04  41 82 00 3C */	beq lbl_8047DE40
/* 8047DE08  3C 60 80 48 */	lis r3, M_wrt_work__Q212daObjMovebox5Bgc_c@ha /* 0x8048206C@ha */
/* 8047DE0C  38 63 20 6C */	addi r3, r3, M_wrt_work__Q212daObjMovebox5Bgc_c@l /* 0x8048206C@l */
/* 8047DE10  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 8047DE14  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 8047DE18  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 8047DE1C  60 00 00 08 */	ori r0, r0, 8
/* 8047DE20  90 1F 01 80 */	stw r0, 0x180(r31)
/* 8047DE24  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8047DE28  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8047DE2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047DE30  40 81 00 10 */	ble lbl_8047DE40
/* 8047DE34  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 8047DE38  60 00 00 10 */	ori r0, r0, 0x10
/* 8047DE3C  90 1F 01 80 */	stw r0, 0x180(r31)
lbl_8047DE40:
/* 8047DE40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8047DE44  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8047DE48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047DE4C  7C 08 03 A6 */	mtlr r0
/* 8047DE50  38 21 00 20 */	addi r1, r1, 0x20
/* 8047DE54  4E 80 00 20 */	blr 
