lbl_804BB390:
/* 804BB390  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BB394  7C 08 02 A6 */	mflr r0
/* 804BB398  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BB39C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804BB3A0  3C 80 80 4C */	lis r4, lit_3879@ha
/* 804BB3A4  3B E4 B5 34 */	addi r31, r4, lit_3879@l
/* 804BB3A8  4B E8 BD 90 */	b PSVECSquareMag
/* 804BB3AC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804BB3B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BB3B4  40 81 00 58 */	ble lbl_804BB40C
/* 804BB3B8  FC 00 08 34 */	frsqrte f0, f1
/* 804BB3BC  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 804BB3C0  FC 44 00 32 */	fmul f2, f4, f0
/* 804BB3C4  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 804BB3C8  FC 00 00 32 */	fmul f0, f0, f0
/* 804BB3CC  FC 01 00 32 */	fmul f0, f1, f0
/* 804BB3D0  FC 03 00 28 */	fsub f0, f3, f0
/* 804BB3D4  FC 02 00 32 */	fmul f0, f2, f0
/* 804BB3D8  FC 44 00 32 */	fmul f2, f4, f0
/* 804BB3DC  FC 00 00 32 */	fmul f0, f0, f0
/* 804BB3E0  FC 01 00 32 */	fmul f0, f1, f0
/* 804BB3E4  FC 03 00 28 */	fsub f0, f3, f0
/* 804BB3E8  FC 02 00 32 */	fmul f0, f2, f0
/* 804BB3EC  FC 44 00 32 */	fmul f2, f4, f0
/* 804BB3F0  FC 00 00 32 */	fmul f0, f0, f0
/* 804BB3F4  FC 01 00 32 */	fmul f0, f1, f0
/* 804BB3F8  FC 03 00 28 */	fsub f0, f3, f0
/* 804BB3FC  FC 02 00 32 */	fmul f0, f2, f0
/* 804BB400  FC 21 00 32 */	fmul f1, f1, f0
/* 804BB404  FC 20 08 18 */	frsp f1, f1
/* 804BB408  48 00 00 88 */	b lbl_804BB490
lbl_804BB40C:
/* 804BB40C  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 804BB410  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BB414  40 80 00 10 */	bge lbl_804BB424
/* 804BB418  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804BB41C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804BB420  48 00 00 70 */	b lbl_804BB490
lbl_804BB424:
/* 804BB424  D0 21 00 08 */	stfs f1, 8(r1)
/* 804BB428  80 81 00 08 */	lwz r4, 8(r1)
/* 804BB42C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804BB430  3C 00 7F 80 */	lis r0, 0x7f80
/* 804BB434  7C 03 00 00 */	cmpw r3, r0
/* 804BB438  41 82 00 14 */	beq lbl_804BB44C
/* 804BB43C  40 80 00 40 */	bge lbl_804BB47C
/* 804BB440  2C 03 00 00 */	cmpwi r3, 0
/* 804BB444  41 82 00 20 */	beq lbl_804BB464
/* 804BB448  48 00 00 34 */	b lbl_804BB47C
lbl_804BB44C:
/* 804BB44C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804BB450  41 82 00 0C */	beq lbl_804BB45C
/* 804BB454  38 00 00 01 */	li r0, 1
/* 804BB458  48 00 00 28 */	b lbl_804BB480
lbl_804BB45C:
/* 804BB45C  38 00 00 02 */	li r0, 2
/* 804BB460  48 00 00 20 */	b lbl_804BB480
lbl_804BB464:
/* 804BB464  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804BB468  41 82 00 0C */	beq lbl_804BB474
/* 804BB46C  38 00 00 05 */	li r0, 5
/* 804BB470  48 00 00 10 */	b lbl_804BB480
lbl_804BB474:
/* 804BB474  38 00 00 03 */	li r0, 3
/* 804BB478  48 00 00 08 */	b lbl_804BB480
lbl_804BB47C:
/* 804BB47C  38 00 00 04 */	li r0, 4
lbl_804BB480:
/* 804BB480  2C 00 00 01 */	cmpwi r0, 1
/* 804BB484  40 82 00 0C */	bne lbl_804BB490
/* 804BB488  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804BB48C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804BB490:
/* 804BB490  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804BB494  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BB498  7C 08 03 A6 */	mtlr r0
/* 804BB49C  38 21 00 20 */	addi r1, r1, 0x20
/* 804BB4A0  4E 80 00 20 */	blr 
