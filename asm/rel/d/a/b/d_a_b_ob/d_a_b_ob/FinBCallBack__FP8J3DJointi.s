lbl_80610B3C:
/* 80610B3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80610B40  7C 08 02 A6 */	mflr r0
/* 80610B44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80610B48  39 61 00 20 */	addi r11, r1, 0x20
/* 80610B4C  4B D5 16 91 */	bl _savegpr_29
/* 80610B50  2C 04 00 00 */	cmpwi r4, 0
/* 80610B54  40 82 00 B4 */	bne lbl_80610C08
/* 80610B58  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 80610B5C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80610B60  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80610B64  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 80610B68  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 80610B6C  28 1D 00 00 */	cmplwi r29, 0
/* 80610B70  41 82 00 98 */	beq lbl_80610C08
/* 80610B74  38 04 FF FE */	addi r0, r4, -2
/* 80610B78  28 00 00 01 */	cmplwi r0, 1
/* 80610B7C  40 81 00 14 */	ble lbl_80610B90
/* 80610B80  2C 04 00 05 */	cmpwi r4, 5
/* 80610B84  41 82 00 0C */	beq lbl_80610B90
/* 80610B88  2C 04 00 06 */	cmpwi r4, 6
/* 80610B8C  40 82 00 7C */	bne lbl_80610C08
lbl_80610B90:
/* 80610B90  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80610B94  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80610B98  1F C4 00 30 */	mulli r30, r4, 0x30
/* 80610B9C  7C 60 F2 14 */	add r3, r0, r30
/* 80610BA0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80610BA4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80610BA8  80 84 00 00 */	lwz r4, 0(r4)
/* 80610BAC  4B D3 59 05 */	bl PSMTXCopy
/* 80610BB0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80610BB4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80610BB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80610BBC  3C 80 80 62 */	lis r4, pno@ha /* 0x8061B534@ha */
/* 80610BC0  80 04 B5 34 */	lwz r0, pno@l(r4)  /* 0x8061B534@l */
/* 80610BC4  1C 00 01 78 */	mulli r0, r0, 0x178
/* 80610BC8  7C 9D 02 14 */	add r4, r29, r0
/* 80610BCC  A8 84 05 F4 */	lha r4, 0x5f4(r4)
/* 80610BD0  4B 9F B8 65 */	bl mDoMtx_YrotM__FPA4_fs
/* 80610BD4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80610BD8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80610BDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80610BE0  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80610BE4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80610BE8  7C 80 F2 14 */	add r4, r0, r30
/* 80610BEC  4B D3 58 C5 */	bl PSMTXCopy
/* 80610BF0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80610BF4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80610BF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80610BFC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80610C00  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80610C04  4B D3 58 AD */	bl PSMTXCopy
lbl_80610C08:
/* 80610C08  38 60 00 01 */	li r3, 1
/* 80610C0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80610C10  4B D5 16 19 */	bl _restgpr_29
/* 80610C14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80610C18  7C 08 03 A6 */	mtlr r0
/* 80610C1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80610C20  4E 80 00 20 */	blr 
