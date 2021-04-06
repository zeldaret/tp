lbl_80138CB8:
/* 80138CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80138CBC  7C 08 02 A6 */	mflr r0
/* 80138CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80138CC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80138CC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80138CCC  7C 7E 1B 78 */	mr r30, r3
/* 80138CD0  4B F6 AF BD */	bl setItemHeap__9daAlink_cFv
/* 80138CD4  7C 7F 1B 78 */	mr r31, r3
/* 80138CD8  7F C3 F3 78 */	mr r3, r30
/* 80138CDC  38 80 03 1F */	li r4, 0x31f
/* 80138CE0  38 A0 1C 00 */	li r5, 0x1c00
/* 80138CE4  4B F8 71 65 */	bl loadAramBmd__9daAlink_cFUsUl
/* 80138CE8  7C 64 1B 78 */	mr r4, r3
/* 80138CEC  7F C3 F3 78 */	mr r3, r30
/* 80138CF0  3C A0 00 08 */	lis r5, 8
/* 80138CF4  38 C0 02 00 */	li r6, 0x200
/* 80138CF8  4B F6 B0 85 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80138CFC  90 7E 07 08 */	stw r3, 0x708(r30)
/* 80138D00  7F C3 F3 78 */	mr r3, r30
/* 80138D04  38 80 03 A6 */	li r4, 0x3a6
/* 80138D08  80 BE 07 08 */	lwz r5, 0x708(r30)
/* 80138D0C  4B F8 72 C1 */	bl loadAramItemBtk__9daAlink_cFUsP8J3DModel
/* 80138D10  90 7E 07 18 */	stw r3, 0x718(r30)
/* 80138D14  7F C3 F3 78 */	mr r3, r30
/* 80138D18  38 80 03 24 */	li r4, 0x324
/* 80138D1C  80 BE 07 08 */	lwz r5, 0x708(r30)
/* 80138D20  4B F8 72 51 */	bl loadAramItemBrk__9daAlink_cFUsP8J3DModel
/* 80138D24  90 7E 07 24 */	stw r3, 0x724(r30)
/* 80138D28  7F E3 FB 78 */	mr r3, r31
/* 80138D2C  4B ED 64 A1 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 80138D30  38 00 01 09 */	li r0, 0x109
/* 80138D34  B0 1E 2F DC */	sth r0, 0x2fdc(r30)
/* 80138D38  38 00 00 00 */	li r0, 0
/* 80138D3C  B0 1E 30 18 */	sth r0, 0x3018(r30)
/* 80138D40  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtLock_c0@ha /* 0x8038F6F4@ha */
/* 80138D44  38 63 F6 F4 */	addi r3, r3, m__22daAlinkHIO_wlAtLock_c0@l /* 0x8038F6F4@l */
/* 80138D48  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80138D4C  D0 1E 34 90 */	stfs f0, 0x3490(r30)
/* 80138D50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80138D54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80138D58  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 80138D5C  64 00 00 80 */	oris r0, r0, 0x80
/* 80138D60  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 80138D64  7F C3 F3 78 */	mr r3, r30
/* 80138D68  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002001C@ha */
/* 80138D6C  38 84 00 1C */	addi r4, r4, 0x001C /* 0x0002001C@l */
/* 80138D70  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80138D74  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80138D78  7D 89 03 A6 */	mtctr r12
/* 80138D7C  4E 80 04 21 */	bctrl 
/* 80138D80  48 07 37 FD */	bl dKy_darkworld_check__Fv
/* 80138D84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80138D88  41 82 00 14 */	beq lbl_80138D9C
/* 80138D8C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80138D90  80 7E 07 24 */	lwz r3, 0x724(r30)
/* 80138D94  D0 03 00 08 */	stfs f0, 8(r3)
/* 80138D98  48 00 00 10 */	b lbl_80138DA8
lbl_80138D9C:
/* 80138D9C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80138DA0  80 7E 07 24 */	lwz r3, 0x724(r30)
/* 80138DA4  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80138DA8:
/* 80138DA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80138DAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80138DB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138DB4  7C 08 03 A6 */	mtlr r0
/* 80138DB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80138DBC  4E 80 00 20 */	blr 
