lbl_80AC11D4:
/* 80AC11D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AC11D8  7C 08 02 A6 */	mflr r0
/* 80AC11DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AC11E0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80AC11E4  7C 7F 1B 78 */	mr r31, r3
/* 80AC11E8  3C 80 80 AC */	lis r4, lit_4623@ha
/* 80AC11EC  38 A4 4E 00 */	addi r5, r4, lit_4623@l
/* 80AC11F0  80 85 00 00 */	lwz r4, 0(r5)
/* 80AC11F4  80 05 00 04 */	lwz r0, 4(r5)
/* 80AC11F8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80AC11FC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AC1200  80 05 00 08 */	lwz r0, 8(r5)
/* 80AC1204  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AC1208  38 81 00 14 */	addi r4, r1, 0x14
/* 80AC120C  48 00 09 6D */	bl chkAction__12daNpc_Saru_cFM12daNpc_Saru_cFPCvPvPv_i
/* 80AC1210  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1214  41 82 00 1C */	beq lbl_80AC1230
/* 80AC1218  7F E3 FB 78 */	mr r3, r31
/* 80AC121C  38 80 00 00 */	li r4, 0
/* 80AC1220  39 9F 0F C8 */	addi r12, r31, 0xfc8
/* 80AC1224  4B 8A 0E 60 */	b __ptmf_scall
/* 80AC1228  60 00 00 00 */	nop 
/* 80AC122C  48 00 00 30 */	b lbl_80AC125C
lbl_80AC1230:
/* 80AC1230  3C 60 80 AC */	lis r3, lit_4628@ha
/* 80AC1234  38 83 4E 0C */	addi r4, r3, lit_4628@l
/* 80AC1238  80 64 00 00 */	lwz r3, 0(r4)
/* 80AC123C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AC1240  90 61 00 08 */	stw r3, 8(r1)
/* 80AC1244  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AC1248  80 04 00 08 */	lwz r0, 8(r4)
/* 80AC124C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AC1250  7F E3 FB 78 */	mr r3, r31
/* 80AC1254  38 81 00 08 */	addi r4, r1, 8
/* 80AC1258  48 00 09 4D */	bl setAction__12daNpc_Saru_cFM12daNpc_Saru_cFPCvPvPv_i
lbl_80AC125C:
/* 80AC125C  38 60 00 01 */	li r3, 1
/* 80AC1260  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80AC1264  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AC1268  7C 08 03 A6 */	mtlr r0
/* 80AC126C  38 21 00 30 */	addi r1, r1, 0x30
/* 80AC1270  4E 80 00 20 */	blr 
