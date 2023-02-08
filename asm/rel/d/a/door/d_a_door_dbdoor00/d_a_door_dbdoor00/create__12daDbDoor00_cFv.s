lbl_8045D9A8:
/* 8045D9A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045D9AC  7C 08 02 A6 */	mflr r0
/* 8045D9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045D9B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045D9B8  7C 7F 1B 78 */	mr r31, r3
/* 8045D9BC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8045D9C0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8045D9C4  40 82 00 1C */	bne lbl_8045D9E0
/* 8045D9C8  28 1F 00 00 */	cmplwi r31, 0
/* 8045D9CC  41 82 00 08 */	beq lbl_8045D9D4
/* 8045D9D0  4B BB B1 95 */	bl __ct__10fopAc_ac_cFv
lbl_8045D9D4:
/* 8045D9D4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8045D9D8  60 00 00 08 */	ori r0, r0, 8
/* 8045D9DC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8045D9E0:
/* 8045D9E0  7F E3 FB 78 */	mr r3, r31
/* 8045D9E4  4B FF FA 8D */	bl getAlwaysArcName__12daDbDoor00_cFv
/* 8045D9E8  7C 64 1B 78 */	mr r4, r3
/* 8045D9EC  38 7F 05 70 */	addi r3, r31, 0x570
/* 8045D9F0  4B BC F4 CD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8045D9F4  2C 03 00 04 */	cmpwi r3, 4
/* 8045D9F8  41 82 00 08 */	beq lbl_8045DA00
/* 8045D9FC  48 00 00 58 */	b lbl_8045DA54
lbl_8045DA00:
/* 8045DA00  7F E3 FB 78 */	mr r3, r31
/* 8045DA04  4B FF FA 9D */	bl getBmdArcName__12daDbDoor00_cFv
/* 8045DA08  7C 64 1B 78 */	mr r4, r3
/* 8045DA0C  38 7F 05 68 */	addi r3, r31, 0x568
/* 8045DA10  4B BC F4 AD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8045DA14  2C 03 00 04 */	cmpwi r3, 4
/* 8045DA18  41 82 00 08 */	beq lbl_8045DA20
/* 8045DA1C  48 00 00 38 */	b lbl_8045DA54
lbl_8045DA20:
/* 8045DA20  7F E3 FB 78 */	mr r3, r31
/* 8045DA24  3C 80 80 46 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x8045D574@ha */
/* 8045DA28  38 84 D5 74 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x8045D574@l */
/* 8045DA2C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008200@ha */
/* 8045DA30  38 A5 82 00 */	addi r5, r5, 0x8200 /* 0x00008200@l */
/* 8045DA34  4B BB CA 7D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8045DA38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8045DA3C  40 82 00 0C */	bne lbl_8045DA48
/* 8045DA40  38 60 00 05 */	li r3, 5
/* 8045DA44  48 00 00 10 */	b lbl_8045DA54
lbl_8045DA48:
/* 8045DA48  7F E3 FB 78 */	mr r3, r31
/* 8045DA4C  4B FF FE A9 */	bl CreateInit__12daDbDoor00_cFv
/* 8045DA50  38 60 00 04 */	li r3, 4
lbl_8045DA54:
/* 8045DA54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045DA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045DA5C  7C 08 03 A6 */	mtlr r0
/* 8045DA60  38 21 00 10 */	addi r1, r1, 0x10
/* 8045DA64  4E 80 00 20 */	blr 
