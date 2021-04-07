lbl_8001A7E0:
/* 8001A7E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001A7E4  7C 08 02 A6 */	mflr r0
/* 8001A7E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001A7EC  7C 65 1B 78 */	mr r5, r3
/* 8001A7F0  38 61 00 0C */	addi r3, r1, 0xc
/* 8001A7F4  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8001A7F8  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 8001A7FC  48 24 C3 39 */	bl __mi__4cXyzCFRC3Vec
/* 8001A800  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8001A804  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8001A808  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8001A80C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8001A810  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8001A814  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8001A818  38 61 00 18 */	addi r3, r1, 0x18
/* 8001A81C  48 32 C9 1D */	bl PSVECSquareMag
/* 8001A820  C0 02 82 04 */	lfs f0, lit_4645(r2)
/* 8001A824  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001A828  40 81 00 58 */	ble lbl_8001A880
/* 8001A82C  FC 00 08 34 */	frsqrte f0, f1
/* 8001A830  C8 82 82 08 */	lfd f4, lit_4745(r2)
/* 8001A834  FC 44 00 32 */	fmul f2, f4, f0
/* 8001A838  C8 62 82 10 */	lfd f3, lit_4746(r2)
/* 8001A83C  FC 00 00 32 */	fmul f0, f0, f0
/* 8001A840  FC 01 00 32 */	fmul f0, f1, f0
/* 8001A844  FC 03 00 28 */	fsub f0, f3, f0
/* 8001A848  FC 02 00 32 */	fmul f0, f2, f0
/* 8001A84C  FC 44 00 32 */	fmul f2, f4, f0
/* 8001A850  FC 00 00 32 */	fmul f0, f0, f0
/* 8001A854  FC 01 00 32 */	fmul f0, f1, f0
/* 8001A858  FC 03 00 28 */	fsub f0, f3, f0
/* 8001A85C  FC 02 00 32 */	fmul f0, f2, f0
/* 8001A860  FC 44 00 32 */	fmul f2, f4, f0
/* 8001A864  FC 00 00 32 */	fmul f0, f0, f0
/* 8001A868  FC 01 00 32 */	fmul f0, f1, f0
/* 8001A86C  FC 03 00 28 */	fsub f0, f3, f0
/* 8001A870  FC 02 00 32 */	fmul f0, f2, f0
/* 8001A874  FC 21 00 32 */	fmul f1, f1, f0
/* 8001A878  FC 20 08 18 */	frsp f1, f1
/* 8001A87C  48 00 00 88 */	b lbl_8001A904
lbl_8001A880:
/* 8001A880  C8 02 82 18 */	lfd f0, lit_4747(r2)
/* 8001A884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001A888  40 80 00 10 */	bge lbl_8001A898
/* 8001A88C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8001A890  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8001A894  48 00 00 70 */	b lbl_8001A904
lbl_8001A898:
/* 8001A898  D0 21 00 08 */	stfs f1, 8(r1)
/* 8001A89C  80 81 00 08 */	lwz r4, 8(r1)
/* 8001A8A0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8001A8A4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8001A8A8  7C 03 00 00 */	cmpw r3, r0
/* 8001A8AC  41 82 00 14 */	beq lbl_8001A8C0
/* 8001A8B0  40 80 00 40 */	bge lbl_8001A8F0
/* 8001A8B4  2C 03 00 00 */	cmpwi r3, 0
/* 8001A8B8  41 82 00 20 */	beq lbl_8001A8D8
/* 8001A8BC  48 00 00 34 */	b lbl_8001A8F0
lbl_8001A8C0:
/* 8001A8C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8001A8C4  41 82 00 0C */	beq lbl_8001A8D0
/* 8001A8C8  38 00 00 01 */	li r0, 1
/* 8001A8CC  48 00 00 28 */	b lbl_8001A8F4
lbl_8001A8D0:
/* 8001A8D0  38 00 00 02 */	li r0, 2
/* 8001A8D4  48 00 00 20 */	b lbl_8001A8F4
lbl_8001A8D8:
/* 8001A8D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8001A8DC  41 82 00 0C */	beq lbl_8001A8E8
/* 8001A8E0  38 00 00 05 */	li r0, 5
/* 8001A8E4  48 00 00 10 */	b lbl_8001A8F4
lbl_8001A8E8:
/* 8001A8E8  38 00 00 03 */	li r0, 3
/* 8001A8EC  48 00 00 08 */	b lbl_8001A8F4
lbl_8001A8F0:
/* 8001A8F0  38 00 00 04 */	li r0, 4
lbl_8001A8F4:
/* 8001A8F4  2C 00 00 01 */	cmpwi r0, 1
/* 8001A8F8  40 82 00 0C */	bne lbl_8001A904
/* 8001A8FC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8001A900  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8001A904:
/* 8001A904  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001A908  7C 08 03 A6 */	mtlr r0
/* 8001A90C  38 21 00 30 */	addi r1, r1, 0x30
/* 8001A910  4E 80 00 20 */	blr 
