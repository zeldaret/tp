lbl_80B7876C:
/* 80B7876C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B78770  7C 08 02 A6 */	mflr r0
/* 80B78774  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B78778  39 61 00 40 */	addi r11, r1, 0x40
/* 80B7877C  4B 7E 9A 60 */	b _savegpr_29
/* 80B78780  7C 7E 1B 78 */	mr r30, r3
/* 80B78784  7C 9F 23 78 */	mr r31, r4
/* 80B78788  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha
/* 80B7878C  3B A4 C4 58 */	addi r29, r4, m__17daNpc_zrA_Param_c@l
/* 80B78790  4B 5D 84 50 */	b setNextIdx__13daNpcF_Path_cFv
/* 80B78794  2C 03 00 00 */	cmpwi r3, 0
/* 80B78798  40 82 01 48 */	bne lbl_80B788E0
/* 80B7879C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 80B787A0  80 7E 00 04 */	lwz r3, 4(r30)
/* 80B787A4  80 63 00 08 */	lwz r3, 8(r3)
/* 80B787A8  54 00 20 36 */	slwi r0, r0, 4
/* 80B787AC  7C 83 02 14 */	add r4, r3, r0
/* 80B787B0  80 64 00 04 */	lwz r3, 4(r4)
/* 80B787B4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B787B8  90 61 00 18 */	stw r3, 0x18(r1)
/* 80B787BC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B787C0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B787C4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B787C8  38 61 00 0C */	addi r3, r1, 0xc
/* 80B787CC  7F E4 FB 78 */	mr r4, r31
/* 80B787D0  38 A1 00 18 */	addi r5, r1, 0x18
/* 80B787D4  4B 6E E3 60 */	b __mi__4cXyzCFRC3Vec
/* 80B787D8  38 61 00 0C */	addi r3, r1, 0xc
/* 80B787DC  4B 7C E9 5C */	b PSVECSquareMag
/* 80B787E0  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 80B787E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B787E8  40 81 00 58 */	ble lbl_80B78840
/* 80B787EC  FC 00 08 34 */	frsqrte f0, f1
/* 80B787F0  C8 9D 00 B8 */	lfd f4, 0xb8(r29)
/* 80B787F4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B787F8  C8 7D 00 C0 */	lfd f3, 0xc0(r29)
/* 80B787FC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B78800  FC 01 00 32 */	fmul f0, f1, f0
/* 80B78804  FC 03 00 28 */	fsub f0, f3, f0
/* 80B78808  FC 02 00 32 */	fmul f0, f2, f0
/* 80B7880C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B78810  FC 00 00 32 */	fmul f0, f0, f0
/* 80B78814  FC 01 00 32 */	fmul f0, f1, f0
/* 80B78818  FC 03 00 28 */	fsub f0, f3, f0
/* 80B7881C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B78820  FC 44 00 32 */	fmul f2, f4, f0
/* 80B78824  FC 00 00 32 */	fmul f0, f0, f0
/* 80B78828  FC 01 00 32 */	fmul f0, f1, f0
/* 80B7882C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B78830  FC 02 00 32 */	fmul f0, f2, f0
/* 80B78834  FC 21 00 32 */	fmul f1, f1, f0
/* 80B78838  FC 20 08 18 */	frsp f1, f1
/* 80B7883C  48 00 00 88 */	b lbl_80B788C4
lbl_80B78840:
/* 80B78840  C8 1D 00 C8 */	lfd f0, 0xc8(r29)
/* 80B78844  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B78848  40 80 00 10 */	bge lbl_80B78858
/* 80B7884C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B78850  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B78854  48 00 00 70 */	b lbl_80B788C4
lbl_80B78858:
/* 80B78858  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B7885C  80 81 00 08 */	lwz r4, 8(r1)
/* 80B78860  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B78864  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B78868  7C 03 00 00 */	cmpw r3, r0
/* 80B7886C  41 82 00 14 */	beq lbl_80B78880
/* 80B78870  40 80 00 40 */	bge lbl_80B788B0
/* 80B78874  2C 03 00 00 */	cmpwi r3, 0
/* 80B78878  41 82 00 20 */	beq lbl_80B78898
/* 80B7887C  48 00 00 34 */	b lbl_80B788B0
lbl_80B78880:
/* 80B78880  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B78884  41 82 00 0C */	beq lbl_80B78890
/* 80B78888  38 00 00 01 */	li r0, 1
/* 80B7888C  48 00 00 28 */	b lbl_80B788B4
lbl_80B78890:
/* 80B78890  38 00 00 02 */	li r0, 2
/* 80B78894  48 00 00 20 */	b lbl_80B788B4
lbl_80B78898:
/* 80B78898  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B7889C  41 82 00 0C */	beq lbl_80B788A8
/* 80B788A0  38 00 00 05 */	li r0, 5
/* 80B788A4  48 00 00 10 */	b lbl_80B788B4
lbl_80B788A8:
/* 80B788A8  38 00 00 03 */	li r0, 3
/* 80B788AC  48 00 00 08 */	b lbl_80B788B4
lbl_80B788B0:
/* 80B788B0  38 00 00 04 */	li r0, 4
lbl_80B788B4:
/* 80B788B4  2C 00 00 01 */	cmpwi r0, 1
/* 80B788B8  40 82 00 0C */	bne lbl_80B788C4
/* 80B788BC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B788C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B788C4:
/* 80B788C4  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 80B788C8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B788CC  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80B788D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80B788D4  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80B788D8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80B788DC  D0 1E 00 1C */	stfs f0, 0x1c(r30)
lbl_80B788E0:
/* 80B788E0  39 61 00 40 */	addi r11, r1, 0x40
/* 80B788E4  4B 7E 99 44 */	b _restgpr_29
/* 80B788E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B788EC  7C 08 03 A6 */	mtlr r0
/* 80B788F0  38 21 00 40 */	addi r1, r1, 0x40
/* 80B788F4  4E 80 00 20 */	blr 
