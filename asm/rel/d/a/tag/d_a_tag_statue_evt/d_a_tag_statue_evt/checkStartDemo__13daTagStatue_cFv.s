lbl_805A7B78:
/* 805A7B78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A7B7C  7C 08 02 A6 */	mflr r0
/* 805A7B80  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A7B84  39 61 00 20 */	addi r11, r1, 0x20
/* 805A7B88  4B DB A6 55 */	bl _savegpr_29
/* 805A7B8C  7C 7D 1B 78 */	mr r29, r3
/* 805A7B90  3C 80 80 5B */	lis r4, l_event_bit@ha /* 0x805A8104@ha */
/* 805A7B94  3B E4 81 04 */	addi r31, r4, l_event_bit@l /* 0x805A8104@l */
/* 805A7B98  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A7B9C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A7BA0  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 805A7BA4  48 00 01 2D */	bl checkOnEffect__13daTagStatue_cFv
/* 805A7BA8  2C 03 00 00 */	cmpwi r3, 0
/* 805A7BAC  40 82 00 0C */	bne lbl_805A7BB8
/* 805A7BB0  38 60 00 00 */	li r3, 0
/* 805A7BB4  48 00 01 04 */	b lbl_805A7CB8
lbl_805A7BB8:
/* 805A7BB8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805A7BBC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805A7BC0  4B D9 F7 DD */	bl PSVECSquareDistance
/* 805A7BC4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 805A7BC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A7BCC  40 81 00 58 */	ble lbl_805A7C24
/* 805A7BD0  FC 00 08 34 */	frsqrte f0, f1
/* 805A7BD4  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 805A7BD8  FC 44 00 32 */	fmul f2, f4, f0
/* 805A7BDC  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 805A7BE0  FC 00 00 32 */	fmul f0, f0, f0
/* 805A7BE4  FC 01 00 32 */	fmul f0, f1, f0
/* 805A7BE8  FC 03 00 28 */	fsub f0, f3, f0
/* 805A7BEC  FC 02 00 32 */	fmul f0, f2, f0
/* 805A7BF0  FC 44 00 32 */	fmul f2, f4, f0
/* 805A7BF4  FC 00 00 32 */	fmul f0, f0, f0
/* 805A7BF8  FC 01 00 32 */	fmul f0, f1, f0
/* 805A7BFC  FC 03 00 28 */	fsub f0, f3, f0
/* 805A7C00  FC 02 00 32 */	fmul f0, f2, f0
/* 805A7C04  FC 44 00 32 */	fmul f2, f4, f0
/* 805A7C08  FC 00 00 32 */	fmul f0, f0, f0
/* 805A7C0C  FC 01 00 32 */	fmul f0, f1, f0
/* 805A7C10  FC 03 00 28 */	fsub f0, f3, f0
/* 805A7C14  FC 02 00 32 */	fmul f0, f2, f0
/* 805A7C18  FC 21 00 32 */	fmul f1, f1, f0
/* 805A7C1C  FC 20 08 18 */	frsp f1, f1
/* 805A7C20  48 00 00 88 */	b lbl_805A7CA8
lbl_805A7C24:
/* 805A7C24  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 805A7C28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A7C2C  40 80 00 10 */	bge lbl_805A7C3C
/* 805A7C30  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805A7C34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805A7C38  48 00 00 70 */	b lbl_805A7CA8
lbl_805A7C3C:
/* 805A7C3C  D0 21 00 08 */	stfs f1, 8(r1)
/* 805A7C40  80 81 00 08 */	lwz r4, 8(r1)
/* 805A7C44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805A7C48  3C 00 7F 80 */	lis r0, 0x7f80
/* 805A7C4C  7C 03 00 00 */	cmpw r3, r0
/* 805A7C50  41 82 00 14 */	beq lbl_805A7C64
/* 805A7C54  40 80 00 40 */	bge lbl_805A7C94
/* 805A7C58  2C 03 00 00 */	cmpwi r3, 0
/* 805A7C5C  41 82 00 20 */	beq lbl_805A7C7C
/* 805A7C60  48 00 00 34 */	b lbl_805A7C94
lbl_805A7C64:
/* 805A7C64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805A7C68  41 82 00 0C */	beq lbl_805A7C74
/* 805A7C6C  38 00 00 01 */	li r0, 1
/* 805A7C70  48 00 00 28 */	b lbl_805A7C98
lbl_805A7C74:
/* 805A7C74  38 00 00 02 */	li r0, 2
/* 805A7C78  48 00 00 20 */	b lbl_805A7C98
lbl_805A7C7C:
/* 805A7C7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805A7C80  41 82 00 0C */	beq lbl_805A7C8C
/* 805A7C84  38 00 00 05 */	li r0, 5
/* 805A7C88  48 00 00 10 */	b lbl_805A7C98
lbl_805A7C8C:
/* 805A7C8C  38 00 00 03 */	li r0, 3
/* 805A7C90  48 00 00 08 */	b lbl_805A7C98
lbl_805A7C94:
/* 805A7C94  38 00 00 04 */	li r0, 4
lbl_805A7C98:
/* 805A7C98  2C 00 00 01 */	cmpwi r0, 1
/* 805A7C9C  40 82 00 0C */	bne lbl_805A7CA8
/* 805A7CA0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805A7CA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805A7CA8:
/* 805A7CA8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 805A7CAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A7CB0  7C 00 00 26 */	mfcr r0
/* 805A7CB4  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_805A7CB8:
/* 805A7CB8  39 61 00 20 */	addi r11, r1, 0x20
/* 805A7CBC  4B DB A5 6D */	bl _restgpr_29
/* 805A7CC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A7CC4  7C 08 03 A6 */	mtlr r0
/* 805A7CC8  38 21 00 20 */	addi r1, r1, 0x20
/* 805A7CCC  4E 80 00 20 */	blr 
