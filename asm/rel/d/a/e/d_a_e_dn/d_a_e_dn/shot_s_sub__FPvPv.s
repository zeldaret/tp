lbl_804E7B74:
/* 804E7B74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E7B78  7C 08 02 A6 */	mflr r0
/* 804E7B7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E7B80  39 61 00 40 */	addi r11, r1, 0x40
/* 804E7B84  4B E7 A6 59 */	bl _savegpr_29
/* 804E7B88  7C 7F 1B 78 */	mr r31, r3
/* 804E7B8C  7C 9D 23 78 */	mr r29, r4
/* 804E7B90  3C 80 80 4F */	lis r4, lit_3789@ha /* 0x804EE8AC@ha */
/* 804E7B94  3B C4 E8 AC */	addi r30, r4, lit_3789@l /* 0x804EE8AC@l */
/* 804E7B98  4B B3 11 49 */	bl fopAc_IsActor__FPv
/* 804E7B9C  2C 03 00 00 */	cmpwi r3, 0
/* 804E7BA0  41 82 01 5C */	beq lbl_804E7CFC
/* 804E7BA4  3C 60 80 4F */	lis r3, learn_check@ha /* 0x804EEF90@ha */
/* 804E7BA8  80 03 EF 90 */	lwz r0, learn_check@l(r3)  /* 0x804EEF90@l */
/* 804E7BAC  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 804E7BB0  41 82 01 4C */	beq lbl_804E7CFC
/* 804E7BB4  A8 1F 00 08 */	lha r0, 8(r31)
/* 804E7BB8  2C 00 03 08 */	cmpwi r0, 0x308
/* 804E7BBC  40 82 01 40 */	bne lbl_804E7CFC
/* 804E7BC0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804E7BC4  28 00 00 01 */	cmplwi r0, 1
/* 804E7BC8  41 82 00 0C */	beq lbl_804E7BD4
/* 804E7BCC  28 00 00 02 */	cmplwi r0, 2
/* 804E7BD0  40 82 01 2C */	bne lbl_804E7CFC
lbl_804E7BD4:
/* 804E7BD4  38 61 00 0C */	addi r3, r1, 0xc
/* 804E7BD8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804E7BDC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804E7BE0  4B D7 EF 55 */	bl __mi__4cXyzCFRC3Vec
/* 804E7BE4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804E7BE8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E7BEC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804E7BF0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E7BF4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804E7BF8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804E7BFC  38 61 00 18 */	addi r3, r1, 0x18
/* 804E7C00  4B E5 F5 39 */	bl PSVECSquareMag
/* 804E7C04  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804E7C08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E7C0C  40 81 00 58 */	ble lbl_804E7C64
/* 804E7C10  FC 00 08 34 */	frsqrte f0, f1
/* 804E7C14  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 804E7C18  FC 44 00 32 */	fmul f2, f4, f0
/* 804E7C1C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 804E7C20  FC 00 00 32 */	fmul f0, f0, f0
/* 804E7C24  FC 01 00 32 */	fmul f0, f1, f0
/* 804E7C28  FC 03 00 28 */	fsub f0, f3, f0
/* 804E7C2C  FC 02 00 32 */	fmul f0, f2, f0
/* 804E7C30  FC 44 00 32 */	fmul f2, f4, f0
/* 804E7C34  FC 00 00 32 */	fmul f0, f0, f0
/* 804E7C38  FC 01 00 32 */	fmul f0, f1, f0
/* 804E7C3C  FC 03 00 28 */	fsub f0, f3, f0
/* 804E7C40  FC 02 00 32 */	fmul f0, f2, f0
/* 804E7C44  FC 44 00 32 */	fmul f2, f4, f0
/* 804E7C48  FC 00 00 32 */	fmul f0, f0, f0
/* 804E7C4C  FC 01 00 32 */	fmul f0, f1, f0
/* 804E7C50  FC 03 00 28 */	fsub f0, f3, f0
/* 804E7C54  FC 02 00 32 */	fmul f0, f2, f0
/* 804E7C58  FC 21 00 32 */	fmul f1, f1, f0
/* 804E7C5C  FC 20 08 18 */	frsp f1, f1
/* 804E7C60  48 00 00 88 */	b lbl_804E7CE8
lbl_804E7C64:
/* 804E7C64  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 804E7C68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E7C6C  40 80 00 10 */	bge lbl_804E7C7C
/* 804E7C70  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804E7C74  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804E7C78  48 00 00 70 */	b lbl_804E7CE8
lbl_804E7C7C:
/* 804E7C7C  D0 21 00 08 */	stfs f1, 8(r1)
/* 804E7C80  80 81 00 08 */	lwz r4, 8(r1)
/* 804E7C84  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804E7C88  3C 00 7F 80 */	lis r0, 0x7f80
/* 804E7C8C  7C 03 00 00 */	cmpw r3, r0
/* 804E7C90  41 82 00 14 */	beq lbl_804E7CA4
/* 804E7C94  40 80 00 40 */	bge lbl_804E7CD4
/* 804E7C98  2C 03 00 00 */	cmpwi r3, 0
/* 804E7C9C  41 82 00 20 */	beq lbl_804E7CBC
/* 804E7CA0  48 00 00 34 */	b lbl_804E7CD4
lbl_804E7CA4:
/* 804E7CA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804E7CA8  41 82 00 0C */	beq lbl_804E7CB4
/* 804E7CAC  38 00 00 01 */	li r0, 1
/* 804E7CB0  48 00 00 28 */	b lbl_804E7CD8
lbl_804E7CB4:
/* 804E7CB4  38 00 00 02 */	li r0, 2
/* 804E7CB8  48 00 00 20 */	b lbl_804E7CD8
lbl_804E7CBC:
/* 804E7CBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804E7CC0  41 82 00 0C */	beq lbl_804E7CCC
/* 804E7CC4  38 00 00 05 */	li r0, 5
/* 804E7CC8  48 00 00 10 */	b lbl_804E7CD8
lbl_804E7CCC:
/* 804E7CCC  38 00 00 03 */	li r0, 3
/* 804E7CD0  48 00 00 08 */	b lbl_804E7CD8
lbl_804E7CD4:
/* 804E7CD4  38 00 00 04 */	li r0, 4
lbl_804E7CD8:
/* 804E7CD8  2C 00 00 01 */	cmpwi r0, 1
/* 804E7CDC  40 82 00 0C */	bne lbl_804E7CE8
/* 804E7CE0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804E7CE4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804E7CE8:
/* 804E7CE8  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 804E7CEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E7CF0  40 80 00 0C */	bge lbl_804E7CFC
/* 804E7CF4  7F E3 FB 78 */	mr r3, r31
/* 804E7CF8  48 00 00 08 */	b lbl_804E7D00
lbl_804E7CFC:
/* 804E7CFC  38 60 00 00 */	li r3, 0
lbl_804E7D00:
/* 804E7D00  39 61 00 40 */	addi r11, r1, 0x40
/* 804E7D04  4B E7 A5 25 */	bl _restgpr_29
/* 804E7D08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E7D0C  7C 08 03 A6 */	mtlr r0
/* 804E7D10  38 21 00 40 */	addi r1, r1, 0x40
/* 804E7D14  4E 80 00 20 */	blr 
