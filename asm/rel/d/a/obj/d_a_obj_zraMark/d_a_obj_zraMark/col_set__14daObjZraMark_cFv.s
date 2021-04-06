lbl_80D42F5C:
/* 80D42F5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D42F60  7C 08 02 A6 */	mflr r0
/* 80D42F64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D42F68  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D42F6C  7C 7F 1B 78 */	mr r31, r3
/* 80D42F70  80 03 07 30 */	lwz r0, 0x730(r3)
/* 80D42F74  28 00 00 00 */	cmplwi r0, 0
/* 80D42F78  40 82 00 0C */	bne lbl_80D42F84
/* 80D42F7C  48 00 03 4D */	bl schHoz__14daObjZraMark_cFv
/* 80D42F80  90 7F 07 30 */	stw r3, 0x730(r31)
lbl_80D42F84:
/* 80D42F84  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 80D42F88  4B 34 14 D9 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80D42F8C  28 03 00 00 */	cmplwi r3, 0
/* 80D42F90  41 82 02 E8 */	beq lbl_80D43278
/* 80D42F94  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 80D42F98  4B 34 15 61 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80D42F9C  88 1F 07 2E */	lbz r0, 0x72e(r31)
/* 80D42FA0  28 00 00 01 */	cmplwi r0, 1
/* 80D42FA4  40 82 00 0C */	bne lbl_80D42FB0
/* 80D42FA8  38 00 00 00 */	li r0, 0
/* 80D42FAC  48 00 00 3C */	b lbl_80D42FE8
lbl_80D42FB0:
/* 80D42FB0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D42FB4  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80D42FB8  28 00 00 FF */	cmplwi r0, 0xff
/* 80D42FBC  40 82 00 08 */	bne lbl_80D42FC4
/* 80D42FC0  38 00 00 00 */	li r0, 0
lbl_80D42FC4:
/* 80D42FC4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D42FC8  41 82 00 18 */	beq lbl_80D42FE0
/* 80D42FCC  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80D42FD0  3C 60 00 40 */	lis r3, 0x0040 /* 0x00400020@ha */
/* 80D42FD4  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00400020@l */
/* 80D42FD8  7C 80 00 38 */	and r0, r4, r0
/* 80D42FDC  48 00 00 0C */	b lbl_80D42FE8
lbl_80D42FE0:
/* 80D42FE0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80D42FE4  54 00 06 B4 */	rlwinm r0, r0, 0, 0x1a, 0x1a
lbl_80D42FE8:
/* 80D42FE8  2C 00 00 00 */	cmpwi r0, 0
/* 80D42FEC  41 82 02 54 */	beq lbl_80D43240
/* 80D42FF0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D42FF4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D42FF8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D42FFC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D43000  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D43004  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D43008  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D4300C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80D43010  28 00 00 FF */	cmplwi r0, 0xff
/* 80D43014  40 82 00 08 */	bne lbl_80D4301C
/* 80D43018  38 00 00 00 */	li r0, 0
lbl_80D4301C:
/* 80D4301C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D43020  2C 00 00 01 */	cmpwi r0, 1
/* 80D43024  41 82 01 48 */	beq lbl_80D4316C
/* 80D43028  40 80 00 10 */	bge lbl_80D43038
/* 80D4302C  2C 00 00 00 */	cmpwi r0, 0
/* 80D43030  40 80 00 14 */	bge lbl_80D43044
/* 80D43034  48 00 02 30 */	b lbl_80D43264
lbl_80D43038:
/* 80D43038  2C 00 00 03 */	cmpwi r0, 3
/* 80D4303C  40 80 02 28 */	bge lbl_80D43264
/* 80D43040  48 00 01 70 */	b lbl_80D431B0
lbl_80D43044:
/* 80D43044  38 00 00 01 */	li r0, 1
/* 80D43048  98 1F 07 2E */	stb r0, 0x72e(r31)
/* 80D4304C  80 1F 05 F8 */	lwz r0, 0x5f8(r31)
/* 80D43050  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D43054  90 1F 05 F8 */	stw r0, 0x5f8(r31)
/* 80D43058  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080298@ha */
/* 80D4305C  38 03 02 98 */	addi r0, r3, 0x0298 /* 0x00080298@l */
/* 80D43060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D43064  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D43068  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D4306C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D43070  38 81 00 14 */	addi r4, r1, 0x14
/* 80D43074  38 A1 00 18 */	addi r5, r1, 0x18
/* 80D43078  38 C0 00 00 */	li r6, 0
/* 80D4307C  38 E0 00 00 */	li r7, 0
/* 80D43080  3D 00 80 D4 */	lis r8, lit_4400@ha /* 0x80D43E44@ha */
/* 80D43084  C0 28 3E 44 */	lfs f1, lit_4400@l(r8)  /* 0x80D43E44@l */
/* 80D43088  FC 40 08 90 */	fmr f2, f1
/* 80D4308C  3D 00 80 D4 */	lis r8, lit_4401@ha /* 0x80D43E48@ha */
/* 80D43090  C0 68 3E 48 */	lfs f3, lit_4401@l(r8)  /* 0x80D43E48@l */
/* 80D43094  FC 80 18 90 */	fmr f4, f3
/* 80D43098  39 00 00 00 */	li r8, 0
/* 80D4309C  4B 56 88 E9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D430A0  88 1F 07 2D */	lbz r0, 0x72d(r31)
/* 80D430A4  28 00 00 02 */	cmplwi r0, 2
/* 80D430A8  41 80 00 60 */	blt lbl_80D43108
/* 80D430AC  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80D430B0  38 83 01 88 */	addi r4, r3, g_meter2_info@l /* 0x80430188@l */
/* 80D430B4  88 64 00 BC */	lbz r3, 0xbc(r4)
/* 80D430B8  38 03 00 02 */	addi r0, r3, 2
/* 80D430BC  98 04 00 BC */	stb r0, 0xbc(r4)
/* 80D430C0  38 00 00 9A */	li r0, 0x9a
/* 80D430C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D430C8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D430CC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D430D0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D430D4  38 81 00 10 */	addi r4, r1, 0x10
/* 80D430D8  38 A0 00 00 */	li r5, 0
/* 80D430DC  38 C0 00 00 */	li r6, 0
/* 80D430E0  38 E0 00 00 */	li r7, 0
/* 80D430E4  3D 00 80 D4 */	lis r8, lit_4400@ha /* 0x80D43E44@ha */
/* 80D430E8  C0 28 3E 44 */	lfs f1, lit_4400@l(r8)  /* 0x80D43E44@l */
/* 80D430EC  FC 40 08 90 */	fmr f2, f1
/* 80D430F0  3D 00 80 D4 */	lis r8, lit_4401@ha /* 0x80D43E48@ha */
/* 80D430F4  C0 68 3E 48 */	lfs f3, lit_4401@l(r8)  /* 0x80D43E48@l */
/* 80D430F8  FC 80 18 90 */	fmr f4, f3
/* 80D430FC  39 00 00 00 */	li r8, 0
/* 80D43100  4B 56 88 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D43104  48 00 00 5C */	b lbl_80D43160
lbl_80D43108:
/* 80D43108  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80D4310C  38 83 01 88 */	addi r4, r3, g_meter2_info@l /* 0x80430188@l */
/* 80D43110  88 64 00 BC */	lbz r3, 0xbc(r4)
/* 80D43114  38 03 00 01 */	addi r0, r3, 1
/* 80D43118  98 04 00 BC */	stb r0, 0xbc(r4)
/* 80D4311C  38 00 00 8C */	li r0, 0x8c
/* 80D43120  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D43124  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D43128  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D4312C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D43130  38 81 00 0C */	addi r4, r1, 0xc
/* 80D43134  38 A0 00 00 */	li r5, 0
/* 80D43138  38 C0 00 00 */	li r6, 0
/* 80D4313C  38 E0 00 00 */	li r7, 0
/* 80D43140  3D 00 80 D4 */	lis r8, lit_4400@ha /* 0x80D43E44@ha */
/* 80D43144  C0 28 3E 44 */	lfs f1, lit_4400@l(r8)  /* 0x80D43E44@l */
/* 80D43148  FC 40 08 90 */	fmr f2, f1
/* 80D4314C  3D 00 80 D4 */	lis r8, lit_4401@ha /* 0x80D43E48@ha */
/* 80D43150  C0 68 3E 48 */	lfs f3, lit_4401@l(r8)  /* 0x80D43E48@l */
/* 80D43154  FC 80 18 90 */	fmr f4, f3
/* 80D43158  39 00 00 00 */	li r8, 0
/* 80D4315C  4B 56 88 29 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D43160:
/* 80D43160  7F E3 FB 78 */	mr r3, r31
/* 80D43164  48 00 02 0D */	bl informBlast__14daObjZraMark_cFv
/* 80D43168  48 00 00 FC */	b lbl_80D43264
lbl_80D4316C:
/* 80D4316C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D43170  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D43174  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D43178  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80D4317C  28 00 00 2D */	cmplwi r0, 0x2d
/* 80D43180  40 82 00 1C */	bne lbl_80D4319C
/* 80D43184  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 80D43188  81 9F 06 1C */	lwz r12, 0x61c(r31)
/* 80D4318C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80D43190  7D 89 03 A6 */	mtctr r12
/* 80D43194  4E 80 04 21 */	bctrl 
/* 80D43198  48 00 01 1C */	b lbl_80D432B4
lbl_80D4319C:
/* 80D4319C  80 7F 07 30 */	lwz r3, 0x730(r31)
/* 80D431A0  28 03 00 00 */	cmplwi r3, 0
/* 80D431A4  41 82 00 0C */	beq lbl_80D431B0
/* 80D431A8  38 00 00 01 */	li r0, 1
/* 80D431AC  98 03 0F 8E */	stb r0, 0xf8e(r3)
lbl_80D431B0:
/* 80D431B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D431B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D431B8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D431BC  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80D431C0  28 00 00 2D */	cmplwi r0, 0x2d
/* 80D431C4  40 82 00 1C */	bne lbl_80D431E0
/* 80D431C8  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 80D431CC  81 9F 06 1C */	lwz r12, 0x61c(r31)
/* 80D431D0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80D431D4  7D 89 03 A6 */	mtctr r12
/* 80D431D8  4E 80 04 21 */	bctrl 
/* 80D431DC  48 00 00 D8 */	b lbl_80D432B4
lbl_80D431E0:
/* 80D431E0  38 00 00 01 */	li r0, 1
/* 80D431E4  98 1F 07 2E */	stb r0, 0x72e(r31)
/* 80D431E8  80 1F 05 F8 */	lwz r0, 0x5f8(r31)
/* 80D431EC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D431F0  90 1F 05 F8 */	stw r0, 0x5f8(r31)
/* 80D431F4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802A7@ha */
/* 80D431F8  38 03 02 A7 */	addi r0, r3, 0x02A7 /* 0x000802A7@l */
/* 80D431FC  90 01 00 08 */	stw r0, 8(r1)
/* 80D43200  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D43204  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D43208  80 63 00 00 */	lwz r3, 0(r3)
/* 80D4320C  38 81 00 08 */	addi r4, r1, 8
/* 80D43210  38 A1 00 18 */	addi r5, r1, 0x18
/* 80D43214  38 C0 00 00 */	li r6, 0
/* 80D43218  38 E0 00 00 */	li r7, 0
/* 80D4321C  3D 00 80 D4 */	lis r8, lit_4400@ha /* 0x80D43E44@ha */
/* 80D43220  C0 28 3E 44 */	lfs f1, lit_4400@l(r8)  /* 0x80D43E44@l */
/* 80D43224  FC 40 08 90 */	fmr f2, f1
/* 80D43228  3D 00 80 D4 */	lis r8, lit_4401@ha /* 0x80D43E48@ha */
/* 80D4322C  C0 68 3E 48 */	lfs f3, lit_4401@l(r8)  /* 0x80D43E48@l */
/* 80D43230  FC 80 18 90 */	fmr f4, f3
/* 80D43234  39 00 00 00 */	li r8, 0
/* 80D43238  4B 56 87 4D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D4323C  48 00 00 28 */	b lbl_80D43264
lbl_80D43240:
/* 80D43240  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 80D43244  4B 34 13 39 */	bl GetTgHitObjSe__12dCcD_GObjInfFv
/* 80D43248  38 80 00 01 */	li r4, 1
/* 80D4324C  4B 34 13 65 */	bl getHitSeID__12dCcD_GObjInfFUci
/* 80D43250  7C 64 1B 78 */	mr r4, r3
/* 80D43254  38 7F 07 34 */	addi r3, r31, 0x734
/* 80D43258  38 A0 00 02 */	li r5, 2
/* 80D4325C  38 C0 00 00 */	li r6, 0
/* 80D43260  4B 57 B2 45 */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
lbl_80D43264:
/* 80D43264  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 80D43268  81 9F 06 1C */	lwz r12, 0x61c(r31)
/* 80D4326C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80D43270  7D 89 03 A6 */	mtctr r12
/* 80D43274  4E 80 04 21 */	bctrl 
lbl_80D43278:
/* 80D43278  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D4327C  7C 03 07 74 */	extsb r3, r0
/* 80D43280  4B 2E 9D ED */	bl dComIfGp_getReverb__Fi
/* 80D43284  7C 65 1B 78 */	mr r5, r3
/* 80D43288  38 7F 07 34 */	addi r3, r31, 0x734
/* 80D4328C  38 80 00 00 */	li r4, 0
/* 80D43290  81 9F 07 44 */	lwz r12, 0x744(r31)
/* 80D43294  81 8C 00 08 */	lwz r12, 8(r12)
/* 80D43298  7D 89 03 A6 */	mtctr r12
/* 80D4329C  4E 80 04 21 */	bctrl 
/* 80D432A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D432A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D432A8  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D432AC  38 9F 05 E0 */	addi r4, r31, 0x5e0
/* 80D432B0  4B 52 18 F9 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80D432B4:
/* 80D432B4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D432B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D432BC  7C 08 03 A6 */	mtlr r0
/* 80D432C0  38 21 00 30 */	addi r1, r1, 0x30
/* 80D432C4  4E 80 00 20 */	blr 
