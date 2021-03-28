lbl_80265E1C:
/* 80265E1C  2C 03 00 01 */	cmpwi r3, 1
/* 80265E20  40 82 00 18 */	bne lbl_80265E38
/* 80265E24  38 00 00 00 */	li r0, 0
/* 80265E28  3C 60 80 43 */	lis r3, g_Counter@ha
/* 80265E2C  38 63 0C D8 */	addi r3, r3, g_Counter@l
/* 80265E30  90 03 00 04 */	stw r0, 4(r3)
/* 80265E34  48 00 00 18 */	b lbl_80265E4C
lbl_80265E38:
/* 80265E38  3C 60 80 43 */	lis r3, g_Counter@ha
/* 80265E3C  38 83 0C D8 */	addi r4, r3, g_Counter@l
/* 80265E40  80 64 00 04 */	lwz r3, 4(r4)
/* 80265E44  38 03 00 01 */	addi r0, r3, 1
/* 80265E48  90 04 00 04 */	stw r0, 4(r4)
lbl_80265E4C:
/* 80265E4C  3C 60 80 43 */	lis r3, g_Counter@ha
/* 80265E50  38 83 0C D8 */	addi r4, r3, g_Counter@l
/* 80265E54  80 64 00 00 */	lwz r3, 0(r4)
/* 80265E58  38 03 00 01 */	addi r0, r3, 1
/* 80265E5C  90 04 00 00 */	stw r0, 0(r4)
/* 80265E60  4E 80 00 20 */	blr 
