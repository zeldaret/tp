lbl_80353B7C:
/* 80353B7C  28 03 00 00 */	cmplwi r3, 0
/* 80353B80  3C 80 80 45 */	lis r4, __CARDBlock@ha /* 0x8044CBC0@ha */
/* 80353B84  38 84 CB C0 */	addi r4, r4, __CARDBlock@l /* 0x8044CBC0@l */
/* 80353B88  41 82 00 0C */	beq lbl_80353B94
/* 80353B8C  7C 60 1B 78 */	mr r0, r3
/* 80353B90  48 00 00 08 */	b lbl_80353B98
lbl_80353B94:
/* 80353B94  38 04 02 20 */	addi r0, r4, 0x220
lbl_80353B98:
/* 80353B98  28 03 00 00 */	cmplwi r3, 0
/* 80353B9C  90 04 01 0C */	stw r0, 0x10c(r4)
/* 80353BA0  41 82 00 08 */	beq lbl_80353BA8
/* 80353BA4  48 00 00 08 */	b lbl_80353BAC
lbl_80353BA8:
/* 80353BA8  38 64 02 20 */	addi r3, r4, 0x220
lbl_80353BAC:
/* 80353BAC  90 64 02 1C */	stw r3, 0x21c(r4)
/* 80353BB0  4E 80 00 20 */	blr 
