lbl_800CF344:
/* 800CF344  38 A0 00 01 */	li r5, 1
/* 800CF348  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 800CF34C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 800CF350  80 03 31 7C */	lwz r0, 0x317c(r3)
/* 800CF354  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800CF358  7C 84 02 14 */	add r4, r4, r0
/* 800CF35C  80 04 5D 7C */	lwz r0, 0x5d7c(r4)
/* 800CF360  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800CF364  40 82 00 14 */	bne lbl_800CF378
/* 800CF368  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800CF36C  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 800CF370  40 82 00 08 */	bne lbl_800CF378
/* 800CF374  38 A0 00 00 */	li r5, 0
lbl_800CF378:
/* 800CF378  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 800CF37C  4E 80 00 20 */	blr 
