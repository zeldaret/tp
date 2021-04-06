lbl_80AAF1F4:
/* 80AAF1F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AAF1F8  7C 08 02 A6 */	mflr r0
/* 80AAF1FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AAF200  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80AAF204  7C 7F 1B 78 */	mr r31, r3
/* 80AAF208  3C 80 80 AB */	lis r4, lit_4758@ha /* 0x80AB2A90@ha */
/* 80AAF20C  38 A4 2A 90 */	addi r5, r4, lit_4758@l /* 0x80AB2A90@l */
/* 80AAF210  80 85 00 00 */	lwz r4, 0(r5)
/* 80AAF214  80 05 00 04 */	lwz r0, 4(r5)
/* 80AAF218  90 81 00 14 */	stw r4, 0x14(r1)
/* 80AAF21C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AAF220  80 05 00 08 */	lwz r0, 8(r5)
/* 80AAF224  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AAF228  38 81 00 14 */	addi r4, r1, 0x14
/* 80AAF22C  48 00 09 F9 */	bl chkAction__13daNpc_Pouya_cFM13daNpc_Pouya_cFPCvPvPv_i
/* 80AAF230  2C 03 00 00 */	cmpwi r3, 0
/* 80AAF234  41 82 00 1C */	beq lbl_80AAF250
/* 80AAF238  7F E3 FB 78 */	mr r3, r31
/* 80AAF23C  38 80 00 00 */	li r4, 0
/* 80AAF240  39 9F 0F BC */	addi r12, r31, 0xfbc
/* 80AAF244  4B 8B 2E 41 */	bl __ptmf_scall
/* 80AAF248  60 00 00 00 */	nop 
/* 80AAF24C  48 00 00 30 */	b lbl_80AAF27C
lbl_80AAF250:
/* 80AAF250  3C 60 80 AB */	lis r3, lit_4763@ha /* 0x80AB2A9C@ha */
/* 80AAF254  38 83 2A 9C */	addi r4, r3, lit_4763@l /* 0x80AB2A9C@l */
/* 80AAF258  80 64 00 00 */	lwz r3, 0(r4)
/* 80AAF25C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AAF260  90 61 00 08 */	stw r3, 8(r1)
/* 80AAF264  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AAF268  80 04 00 08 */	lwz r0, 8(r4)
/* 80AAF26C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AAF270  7F E3 FB 78 */	mr r3, r31
/* 80AAF274  38 81 00 08 */	addi r4, r1, 8
/* 80AAF278  48 00 09 D9 */	bl setAction__13daNpc_Pouya_cFM13daNpc_Pouya_cFPCvPvPv_i
lbl_80AAF27C:
/* 80AAF27C  38 60 00 01 */	li r3, 1
/* 80AAF280  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80AAF284  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AAF288  7C 08 03 A6 */	mtlr r0
/* 80AAF28C  38 21 00 30 */	addi r1, r1, 0x30
/* 80AAF290  4E 80 00 20 */	blr 
