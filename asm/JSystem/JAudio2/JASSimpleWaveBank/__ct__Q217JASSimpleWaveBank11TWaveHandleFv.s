lbl_80298F5C:
/* 80298F5C  3C 80 80 3C */	lis r4, __vt__13JASWaveHandle@ha
/* 80298F60  38 04 77 54 */	addi r0, r4, __vt__13JASWaveHandle@l
/* 80298F64  90 03 00 00 */	stw r0, 0(r3)
/* 80298F68  3C 80 80 3C */	lis r4, __vt__Q217JASSimpleWaveBank11TWaveHandle@ha
/* 80298F6C  38 04 77 98 */	addi r0, r4, __vt__Q217JASSimpleWaveBank11TWaveHandle@l
/* 80298F70  90 03 00 00 */	stw r0, 0(r3)
/* 80298F74  38 00 00 3C */	li r0, 0x3c
/* 80298F78  98 03 00 05 */	stb r0, 5(r3)
/* 80298F7C  38 0D 82 38 */	la r0, one__11JASWaveInfo(r13) /* 804507B8-_SDA_BASE_ */
/* 80298F80  90 03 00 24 */	stw r0, 0x24(r3)
/* 80298F84  38 00 00 00 */	li r0, 0
/* 80298F88  90 03 00 28 */	stw r0, 0x28(r3)
/* 80298F8C  4E 80 00 20 */	blr 
