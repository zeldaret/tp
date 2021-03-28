lbl_80031870:
/* 80031870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80031874  7C 08 02 A6 */	mflr r0
/* 80031878  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003187C  7C 65 1B 78 */	mr r5, r3
/* 80031880  38 6D 88 1C */	la r3, arcName(r13) /* 80450D9C-_SDA_BASE_ */
/* 80031884  3C 80 80 38 */	lis r4, d_com_d_com_static__stringBase0@ha
/* 80031888  38 84 90 B0 */	addi r4, r4, d_com_d_com_static__stringBase0@l
/* 8003188C  38 84 00 08 */	addi r4, r4, 8
/* 80031890  80 05 00 B0 */	lwz r0, 0xb0(r5)
/* 80031894  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80031898  4C C6 31 82 */	crclr 6
/* 8003189C  48 33 4C 41 */	bl sprintf
/* 800318A0  38 6D 88 1C */	la r3, arcName(r13) /* 80450D9C-_SDA_BASE_ */
/* 800318A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800318A8  7C 08 03 A6 */	mtlr r0
/* 800318AC  38 21 00 10 */	addi r1, r1, 0x10
/* 800318B0  4E 80 00 20 */	blr 
