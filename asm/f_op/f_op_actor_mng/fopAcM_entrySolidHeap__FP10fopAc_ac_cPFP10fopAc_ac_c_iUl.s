lbl_8001A4B0:
/* 8001A4B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001A4B4  7C 08 02 A6 */	mflr r0
/* 8001A4B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001A4BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001A4C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8001A4C4  8B ED 87 49 */	lbz r31, struct_80450CC8+0x1(r13)
/* 8001A4C8  54 A0 00 01 */	rlwinm. r0, r5, 0, 0, 0
/* 8001A4CC  41 82 00 0C */	beq lbl_8001A4D8
/* 8001A4D0  38 00 00 01 */	li r0, 1
/* 8001A4D4  98 0D 87 49 */	stb r0, struct_80450CC8+0x1(r13)
lbl_8001A4D8:
/* 8001A4D8  8B CD 87 48 */	lbz r30, struct_80450CC8+0x0(r13)
/* 8001A4DC  54 A0 00 85 */	rlwinm. r0, r5, 0, 2, 2
/* 8001A4E0  41 82 00 10 */	beq lbl_8001A4F0
/* 8001A4E4  38 00 00 00 */	li r0, 0
/* 8001A4E8  98 0D 87 48 */	stb r0, struct_80450CC8+0x0(r13)
/* 8001A4EC  48 00 00 14 */	b lbl_8001A500
lbl_8001A4F0:
/* 8001A4F0  54 A0 00 C7 */	rlwinm. r0, r5, 0, 3, 3
/* 8001A4F4  41 82 00 0C */	beq lbl_8001A500
/* 8001A4F8  38 00 00 01 */	li r0, 1
/* 8001A4FC  98 0D 87 48 */	stb r0, struct_80450CC8+0x0(r13)
lbl_8001A500:
/* 8001A500  54 A5 02 3E */	clrlwi r5, r5, 8
/* 8001A504  4B FF FC E5 */	bl fopAcM_entrySolidHeap___FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8001A508  9B ED 87 49 */	stb r31, struct_80450CC8+0x1(r13)
/* 8001A50C  9B CD 87 48 */	stb r30, struct_80450CC8+0x0(r13)
/* 8001A510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001A514  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001A518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001A51C  7C 08 03 A6 */	mtlr r0
/* 8001A520  38 21 00 10 */	addi r1, r1, 0x10
/* 8001A524  4E 80 00 20 */	blr 
