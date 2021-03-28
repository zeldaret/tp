lbl_80CF7978:
/* 80CF7978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF797C  7C 08 02 A6 */	mflr r0
/* 80CF7980  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF7984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF7988  7C 7F 1B 78 */	mr r31, r3
/* 80CF798C  88 03 0A E6 */	lbz r0, 0xae6(r3)
/* 80CF7990  98 03 0A E7 */	stb r0, 0xae7(r3)
/* 80CF7994  38 00 00 00 */	li r0, 0
/* 80CF7998  98 03 0A E6 */	stb r0, 0xae6(r3)
/* 80CF799C  38 7F 07 30 */	addi r3, r31, 0x730
/* 80CF79A0  4B 38 CA C0 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80CF79A4  28 03 00 00 */	cmplwi r3, 0
/* 80CF79A8  41 82 00 50 */	beq lbl_80CF79F8
/* 80CF79AC  38 7F 07 30 */	addi r3, r31, 0x730
/* 80CF79B0  4B 38 CB 48 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80CF79B4  28 03 00 00 */	cmplwi r3, 0
/* 80CF79B8  41 82 00 40 */	beq lbl_80CF79F8
/* 80CF79BC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80CF79C0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80CF79C4  41 82 00 34 */	beq lbl_80CF79F8
/* 80CF79C8  38 7F 07 30 */	addi r3, r31, 0x730
/* 80CF79CC  4B 38 CB 7C */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80CF79D0  28 03 00 00 */	cmplwi r3, 0
/* 80CF79D4  41 82 00 24 */	beq lbl_80CF79F8
/* 80CF79D8  38 7F 07 30 */	addi r3, r31, 0x730
/* 80CF79DC  4B 38 CB 6C */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80CF79E0  88 03 00 75 */	lbz r0, 0x75(r3)
/* 80CF79E4  28 00 00 04 */	cmplwi r0, 4
/* 80CF79E8  40 82 00 10 */	bne lbl_80CF79F8
/* 80CF79EC  88 1F 0A E6 */	lbz r0, 0xae6(r31)
/* 80CF79F0  60 00 00 01 */	ori r0, r0, 1
/* 80CF79F4  98 1F 0A E6 */	stb r0, 0xae6(r31)
lbl_80CF79F8:
/* 80CF79F8  38 7F 08 68 */	addi r3, r31, 0x868
/* 80CF79FC  4B 38 CA 64 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80CF7A00  28 03 00 00 */	cmplwi r3, 0
/* 80CF7A04  41 82 00 50 */	beq lbl_80CF7A54
/* 80CF7A08  38 7F 08 68 */	addi r3, r31, 0x868
/* 80CF7A0C  4B 38 CA EC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80CF7A10  28 03 00 00 */	cmplwi r3, 0
/* 80CF7A14  41 82 00 40 */	beq lbl_80CF7A54
/* 80CF7A18  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80CF7A1C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80CF7A20  41 82 00 34 */	beq lbl_80CF7A54
/* 80CF7A24  38 7F 08 68 */	addi r3, r31, 0x868
/* 80CF7A28  4B 38 CB 20 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80CF7A2C  28 03 00 00 */	cmplwi r3, 0
/* 80CF7A30  41 82 00 24 */	beq lbl_80CF7A54
/* 80CF7A34  38 7F 08 68 */	addi r3, r31, 0x868
/* 80CF7A38  4B 38 CB 10 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80CF7A3C  88 03 00 75 */	lbz r0, 0x75(r3)
/* 80CF7A40  28 00 00 04 */	cmplwi r0, 4
/* 80CF7A44  40 82 00 10 */	bne lbl_80CF7A54
/* 80CF7A48  88 1F 0A E6 */	lbz r0, 0xae6(r31)
/* 80CF7A4C  60 00 00 02 */	ori r0, r0, 2
/* 80CF7A50  98 1F 0A E6 */	stb r0, 0xae6(r31)
lbl_80CF7A54:
/* 80CF7A54  38 60 00 01 */	li r3, 1
/* 80CF7A58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF7A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF7A60  7C 08 03 A6 */	mtlr r0
/* 80CF7A64  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF7A68  4E 80 00 20 */	blr 
