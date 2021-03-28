lbl_80298C18:
/* 80298C18  3C 80 80 3C */	lis r4, __vt__13JASWaveHandle@ha
/* 80298C1C  38 04 77 54 */	addi r0, r4, __vt__13JASWaveHandle@l
/* 80298C20  90 03 00 00 */	stw r0, 0(r3)
/* 80298C24  3C 80 80 3C */	lis r4, __vt__Q216JASBasicWaveBank11TWaveHandle@ha
/* 80298C28  38 04 77 28 */	addi r0, r4, __vt__Q216JASBasicWaveBank11TWaveHandle@l
/* 80298C2C  90 03 00 00 */	stw r0, 0(r3)
/* 80298C30  38 00 00 3C */	li r0, 0x3c
/* 80298C34  98 03 00 05 */	stb r0, 5(r3)
/* 80298C38  38 0D 82 38 */	la r0, one__11JASWaveInfo(r13) /* 804507B8-_SDA_BASE_ */
/* 80298C3C  90 03 00 24 */	stw r0, 0x24(r3)
/* 80298C40  38 00 00 00 */	li r0, 0
/* 80298C44  90 03 00 28 */	stw r0, 0x28(r3)
/* 80298C48  4E 80 00 20 */	blr 
