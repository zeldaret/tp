lbl_80A37B08:
/* 80A37B08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A37B0C  7C 08 02 A6 */	mflr r0
/* 80A37B10  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A37B14  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80A37B18  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80A37B1C  7C 7F 1B 78 */	mr r31, r3
/* 80A37B20  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A37B24  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A37B28  88 1F 15 BC */	lbz r0, 0x15bc(r31)
/* 80A37B2C  28 00 00 00 */	cmplwi r0, 0
/* 80A37B30  41 82 01 D8 */	beq lbl_80A37D08
/* 80A37B34  80 1F 06 FC */	lwz r0, 0x6fc(r31)
/* 80A37B38  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80A37B3C  41 82 00 34 */	beq lbl_80A37B70
/* 80A37B40  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A37B44  D0 1F 15 B0 */	stfs f0, 0x15b0(r31)
/* 80A37B48  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A37B4C  D0 1F 15 B4 */	stfs f0, 0x15b4(r31)
/* 80A37B50  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A37B54  D0 1F 15 B8 */	stfs f0, 0x15b8(r31)
/* 80A37B58  38 00 00 00 */	li r0, 0
/* 80A37B5C  98 1F 15 BC */	stb r0, 0x15bc(r31)
/* 80A37B60  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A37B64  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A37B68  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A37B6C  48 00 01 9C */	b lbl_80A37D08
lbl_80A37B70:
/* 80A37B70  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A37B74  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A37B78  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A37B7C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A37B80  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A37B84  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A37B88  38 61 00 24 */	addi r3, r1, 0x24
/* 80A37B8C  38 9F 15 B0 */	addi r4, r31, 0x15b0
/* 80A37B90  C0 3E 01 FC */	lfs f1, 0x1fc(r30)
/* 80A37B94  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 80A37B98  4B 83 85 E1 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80A37B9C  38 61 00 24 */	addi r3, r1, 0x24
/* 80A37BA0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A37BA4  7C 65 1B 78 */	mr r5, r3
/* 80A37BA8  4B 90 F5 0D */	bl PSVECSubtract
/* 80A37BAC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A37BB0  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A37BB4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80A37BB8  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A37BBC  38 61 00 18 */	addi r3, r1, 0x18
/* 80A37BC0  38 9F 15 B0 */	addi r4, r31, 0x15b0
/* 80A37BC4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A37BC8  4B 82 EF 6D */	bl __mi__4cXyzCFRC3Vec
/* 80A37BCC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A37BD0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A37BD4  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A37BD8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A37BDC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A37BE0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A37BE4  38 61 00 0C */	addi r3, r1, 0xc
/* 80A37BE8  4B 90 F5 51 */	bl PSVECSquareMag
/* 80A37BEC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A37BF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A37BF4  40 81 00 58 */	ble lbl_80A37C4C
/* 80A37BF8  FC 00 08 34 */	frsqrte f0, f1
/* 80A37BFC  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 80A37C00  FC 44 00 32 */	fmul f2, f4, f0
/* 80A37C04  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 80A37C08  FC 00 00 32 */	fmul f0, f0, f0
/* 80A37C0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A37C10  FC 03 00 28 */	fsub f0, f3, f0
/* 80A37C14  FC 02 00 32 */	fmul f0, f2, f0
/* 80A37C18  FC 44 00 32 */	fmul f2, f4, f0
/* 80A37C1C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A37C20  FC 01 00 32 */	fmul f0, f1, f0
/* 80A37C24  FC 03 00 28 */	fsub f0, f3, f0
/* 80A37C28  FC 02 00 32 */	fmul f0, f2, f0
/* 80A37C2C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A37C30  FC 00 00 32 */	fmul f0, f0, f0
/* 80A37C34  FC 01 00 32 */	fmul f0, f1, f0
/* 80A37C38  FC 03 00 28 */	fsub f0, f3, f0
/* 80A37C3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A37C40  FC 21 00 32 */	fmul f1, f1, f0
/* 80A37C44  FC 20 08 18 */	frsp f1, f1
/* 80A37C48  48 00 00 88 */	b lbl_80A37CD0
lbl_80A37C4C:
/* 80A37C4C  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 80A37C50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A37C54  40 80 00 10 */	bge lbl_80A37C64
/* 80A37C58  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A37C5C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A37C60  48 00 00 70 */	b lbl_80A37CD0
lbl_80A37C64:
/* 80A37C64  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A37C68  80 81 00 08 */	lwz r4, 8(r1)
/* 80A37C6C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A37C70  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A37C74  7C 03 00 00 */	cmpw r3, r0
/* 80A37C78  41 82 00 14 */	beq lbl_80A37C8C
/* 80A37C7C  40 80 00 40 */	bge lbl_80A37CBC
/* 80A37C80  2C 03 00 00 */	cmpwi r3, 0
/* 80A37C84  41 82 00 20 */	beq lbl_80A37CA4
/* 80A37C88  48 00 00 34 */	b lbl_80A37CBC
lbl_80A37C8C:
/* 80A37C8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A37C90  41 82 00 0C */	beq lbl_80A37C9C
/* 80A37C94  38 00 00 01 */	li r0, 1
/* 80A37C98  48 00 00 28 */	b lbl_80A37CC0
lbl_80A37C9C:
/* 80A37C9C  38 00 00 02 */	li r0, 2
/* 80A37CA0  48 00 00 20 */	b lbl_80A37CC0
lbl_80A37CA4:
/* 80A37CA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A37CA8  41 82 00 0C */	beq lbl_80A37CB4
/* 80A37CAC  38 00 00 05 */	li r0, 5
/* 80A37CB0  48 00 00 10 */	b lbl_80A37CC0
lbl_80A37CB4:
/* 80A37CB4  38 00 00 03 */	li r0, 3
/* 80A37CB8  48 00 00 08 */	b lbl_80A37CC0
lbl_80A37CBC:
/* 80A37CBC  38 00 00 04 */	li r0, 4
lbl_80A37CC0:
/* 80A37CC0  2C 00 00 01 */	cmpwi r0, 1
/* 80A37CC4  40 82 00 0C */	bne lbl_80A37CD0
/* 80A37CC8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A37CCC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A37CD0:
/* 80A37CD0  C0 1E 02 00 */	lfs f0, 0x200(r30)
/* 80A37CD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A37CD8  40 81 00 10 */	ble lbl_80A37CE8
/* 80A37CDC  7F E3 FB 78 */	mr r3, r31
/* 80A37CE0  4B FF F7 51 */	bl setSlipPrtcl__10daNpc_Kn_cFv
/* 80A37CE4  48 00 00 24 */	b lbl_80A37D08
lbl_80A37CE8:
/* 80A37CE8  C0 1E 02 04 */	lfs f0, 0x204(r30)
/* 80A37CEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A37CF0  40 80 00 18 */	bge lbl_80A37D08
/* 80A37CF4  38 00 00 00 */	li r0, 0
/* 80A37CF8  98 1F 15 BC */	stb r0, 0x15bc(r31)
/* 80A37CFC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A37D00  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A37D04  D0 1F 05 00 */	stfs f0, 0x500(r31)
lbl_80A37D08:
/* 80A37D08  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80A37D0C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80A37D10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A37D14  7C 08 03 A6 */	mtlr r0
/* 80A37D18  38 21 00 40 */	addi r1, r1, 0x40
/* 80A37D1C  4E 80 00 20 */	blr 
