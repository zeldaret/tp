lbl_80115C20:
/* 80115C20  38 A0 00 00 */	li r5, 0
/* 80115C24  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80115C28  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80115C2C  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80115C30  28 00 00 00 */	cmplwi r0, 0
/* 80115C34  40 82 00 10 */	bne lbl_80115C44
/* 80115C38  A0 03 06 04 */	lhz r0, 0x604(r3)
/* 80115C3C  2C 00 00 00 */	cmpwi r0, 0
/* 80115C40  41 82 00 08 */	beq lbl_80115C48
lbl_80115C44:
/* 80115C44  38 A0 00 01 */	li r5, 1
lbl_80115C48:
/* 80115C48  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80115C4C  4E 80 00 20 */	blr 
