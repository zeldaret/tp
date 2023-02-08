lbl_80197270:
/* 80197270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80197274  7C 08 02 A6 */	mflr r0
/* 80197278  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019727C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80197280  93 C1 00 08 */	stw r30, 8(r1)
/* 80197284  7C 7E 1B 78 */	mr r30, r3
/* 80197288  7C 9F 23 78 */	mr r31, r4
/* 8019728C  4B E8 1A 55 */	bl fopAc_IsActor__FPv
/* 80197290  2C 03 00 00 */	cmpwi r3, 0
/* 80197294  41 82 00 88 */	beq lbl_8019731C
/* 80197298  A8 1E 00 08 */	lha r0, 8(r30)
/* 8019729C  2C 00 01 26 */	cmpwi r0, 0x126
/* 801972A0  40 82 00 7C */	bne lbl_8019731C
/* 801972A4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 801972A8  54 03 00 06 */	rlwinm r3, r0, 0, 0, 3
/* 801972AC  80 9E 00 B0 */	lwz r4, 0xb0(r30)
/* 801972B0  54 80 00 06 */	rlwinm r0, r4, 0, 0, 3
/* 801972B4  7C 03 00 40 */	cmplw r3, r0
/* 801972B8  40 82 00 64 */	bne lbl_8019731C
/* 801972BC  80 6D 8A E4 */	lwz r3, dShopSystem_camera_count(r13)
/* 801972C0  2C 03 00 02 */	cmpwi r3, 2
/* 801972C4  40 80 00 58 */	bge lbl_8019731C
/* 801972C8  54 80 07 3E */	clrlwi r0, r4, 0x1c
/* 801972CC  2C 00 00 01 */	cmpwi r0, 1
/* 801972D0  41 82 00 30 */	beq lbl_80197300
/* 801972D4  40 80 00 48 */	bge lbl_8019731C
/* 801972D8  2C 00 00 00 */	cmpwi r0, 0
/* 801972DC  40 80 00 08 */	bge lbl_801972E4
/* 801972E0  48 00 00 3C */	b lbl_8019731C
lbl_801972E4:
/* 801972E4  80 0D 81 70 */	lwz r0, dShopSystem_cameraActor(r13)
/* 801972E8  28 00 00 00 */	cmplwi r0, 0
/* 801972EC  40 82 00 30 */	bne lbl_8019731C
/* 801972F0  93 CD 81 70 */	stw r30, dShopSystem_cameraActor(r13)
/* 801972F4  38 03 00 01 */	addi r0, r3, 1
/* 801972F8  90 0D 8A E4 */	stw r0, dShopSystem_camera_count(r13)
/* 801972FC  48 00 00 20 */	b lbl_8019731C
lbl_80197300:
/* 80197300  38 8D 81 70 */	la r4, dShopSystem_cameraActor(r13) /* 804506F0-_SDA_BASE_ */
/* 80197304  80 04 00 04 */	lwz r0, 4(r4)
/* 80197308  28 00 00 00 */	cmplwi r0, 0
/* 8019730C  40 82 00 10 */	bne lbl_8019731C
/* 80197310  93 C4 00 04 */	stw r30, 4(r4)
/* 80197314  38 03 00 01 */	addi r0, r3, 1
/* 80197318  90 0D 8A E4 */	stw r0, dShopSystem_camera_count(r13)
lbl_8019731C:
/* 8019731C  38 60 00 00 */	li r3, 0
/* 80197320  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80197324  83 C1 00 08 */	lwz r30, 8(r1)
/* 80197328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019732C  7C 08 03 A6 */	mtlr r0
/* 80197330  38 21 00 10 */	addi r1, r1, 0x10
/* 80197334  4E 80 00 20 */	blr 
