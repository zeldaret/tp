lbl_804B4B7C:
/* 804B4B7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B4B80  7C 08 02 A6 */	mflr r0
/* 804B4B84  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B4B88  39 61 00 30 */	addi r11, r1, 0x30
/* 804B4B8C  4B EA D6 51 */	bl _savegpr_29
/* 804B4B90  7C 7D 1B 78 */	mr r29, r3
/* 804B4B94  7C 9E 23 78 */	mr r30, r4
/* 804B4B98  3C 80 80 4C */	lis r4, lit_3879@ha /* 0x804BB534@ha */
/* 804B4B9C  3B E4 B5 34 */	addi r31, r4, lit_3879@l /* 0x804BB534@l */
/* 804B4BA0  4B B6 41 41 */	bl fopAc_IsActor__FPv
/* 804B4BA4  2C 03 00 00 */	cmpwi r3, 0
/* 804B4BA8  41 82 01 2C */	beq lbl_804B4CD4
/* 804B4BAC  A8 1D 00 08 */	lha r0, 8(r29)
/* 804B4BB0  2C 00 01 36 */	cmpwi r0, 0x136
/* 804B4BB4  40 82 01 20 */	bne lbl_804B4CD4
/* 804B4BB8  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 804B4BBC  28 00 00 15 */	cmplwi r0, 0x15
/* 804B4BC0  40 82 01 14 */	bne lbl_804B4CD4
/* 804B4BC4  38 61 00 0C */	addi r3, r1, 0xc
/* 804B4BC8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804B4BCC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804B4BD0  4B DB 1F 65 */	bl __mi__4cXyzCFRC3Vec
/* 804B4BD4  38 61 00 0C */	addi r3, r1, 0xc
/* 804B4BD8  4B E9 25 61 */	bl PSVECSquareMag
/* 804B4BDC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B4BE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B4BE4  40 81 00 58 */	ble lbl_804B4C3C
/* 804B4BE8  FC 00 08 34 */	frsqrte f0, f1
/* 804B4BEC  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 804B4BF0  FC 44 00 32 */	fmul f2, f4, f0
/* 804B4BF4  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 804B4BF8  FC 00 00 32 */	fmul f0, f0, f0
/* 804B4BFC  FC 01 00 32 */	fmul f0, f1, f0
/* 804B4C00  FC 03 00 28 */	fsub f0, f3, f0
/* 804B4C04  FC 02 00 32 */	fmul f0, f2, f0
/* 804B4C08  FC 44 00 32 */	fmul f2, f4, f0
/* 804B4C0C  FC 00 00 32 */	fmul f0, f0, f0
/* 804B4C10  FC 01 00 32 */	fmul f0, f1, f0
/* 804B4C14  FC 03 00 28 */	fsub f0, f3, f0
/* 804B4C18  FC 02 00 32 */	fmul f0, f2, f0
/* 804B4C1C  FC 44 00 32 */	fmul f2, f4, f0
/* 804B4C20  FC 00 00 32 */	fmul f0, f0, f0
/* 804B4C24  FC 01 00 32 */	fmul f0, f1, f0
/* 804B4C28  FC 03 00 28 */	fsub f0, f3, f0
/* 804B4C2C  FC 02 00 32 */	fmul f0, f2, f0
/* 804B4C30  FC 21 00 32 */	fmul f1, f1, f0
/* 804B4C34  FC 20 08 18 */	frsp f1, f1
/* 804B4C38  48 00 00 88 */	b lbl_804B4CC0
lbl_804B4C3C:
/* 804B4C3C  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 804B4C40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B4C44  40 80 00 10 */	bge lbl_804B4C54
/* 804B4C48  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B4C4C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804B4C50  48 00 00 70 */	b lbl_804B4CC0
lbl_804B4C54:
/* 804B4C54  D0 21 00 08 */	stfs f1, 8(r1)
/* 804B4C58  80 81 00 08 */	lwz r4, 8(r1)
/* 804B4C5C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804B4C60  3C 00 7F 80 */	lis r0, 0x7f80
/* 804B4C64  7C 03 00 00 */	cmpw r3, r0
/* 804B4C68  41 82 00 14 */	beq lbl_804B4C7C
/* 804B4C6C  40 80 00 40 */	bge lbl_804B4CAC
/* 804B4C70  2C 03 00 00 */	cmpwi r3, 0
/* 804B4C74  41 82 00 20 */	beq lbl_804B4C94
/* 804B4C78  48 00 00 34 */	b lbl_804B4CAC
lbl_804B4C7C:
/* 804B4C7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B4C80  41 82 00 0C */	beq lbl_804B4C8C
/* 804B4C84  38 00 00 01 */	li r0, 1
/* 804B4C88  48 00 00 28 */	b lbl_804B4CB0
lbl_804B4C8C:
/* 804B4C8C  38 00 00 02 */	li r0, 2
/* 804B4C90  48 00 00 20 */	b lbl_804B4CB0
lbl_804B4C94:
/* 804B4C94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B4C98  41 82 00 0C */	beq lbl_804B4CA4
/* 804B4C9C  38 00 00 05 */	li r0, 5
/* 804B4CA0  48 00 00 10 */	b lbl_804B4CB0
lbl_804B4CA4:
/* 804B4CA4  38 00 00 03 */	li r0, 3
/* 804B4CA8  48 00 00 08 */	b lbl_804B4CB0
lbl_804B4CAC:
/* 804B4CAC  38 00 00 04 */	li r0, 4
lbl_804B4CB0:
/* 804B4CB0  2C 00 00 01 */	cmpwi r0, 1
/* 804B4CB4  40 82 00 0C */	bne lbl_804B4CC0
/* 804B4CB8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B4CBC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804B4CC0:
/* 804B4CC0  C0 1D 05 BC */	lfs f0, 0x5bc(r29)
/* 804B4CC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B4CC8  40 80 00 0C */	bge lbl_804B4CD4
/* 804B4CCC  7F A3 EB 78 */	mr r3, r29
/* 804B4CD0  48 00 00 08 */	b lbl_804B4CD8
lbl_804B4CD4:
/* 804B4CD4  38 60 00 00 */	li r3, 0
lbl_804B4CD8:
/* 804B4CD8  39 61 00 30 */	addi r11, r1, 0x30
/* 804B4CDC  4B EA D5 4D */	bl _restgpr_29
/* 804B4CE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B4CE4  7C 08 03 A6 */	mtlr r0
/* 804B4CE8  38 21 00 30 */	addi r1, r1, 0x30
/* 804B4CEC  4E 80 00 20 */	blr 
