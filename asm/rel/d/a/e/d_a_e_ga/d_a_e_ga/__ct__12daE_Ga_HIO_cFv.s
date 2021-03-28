lbl_804FB0EC:
/* 804FB0EC  3C 80 80 50 */	lis r4, __vt__12daE_Ga_HIO_c@ha
/* 804FB0F0  38 04 BC 30 */	addi r0, r4, __vt__12daE_Ga_HIO_c@l
/* 804FB0F4  90 03 00 00 */	stw r0, 0(r3)
/* 804FB0F8  38 00 FF FF */	li r0, -1
/* 804FB0FC  98 03 00 04 */	stb r0, 4(r3)
/* 804FB100  3C 80 80 50 */	lis r4, lit_3646@ha
/* 804FB104  C0 04 BB 90 */	lfs f0, lit_3646@l(r4)
/* 804FB108  D0 03 00 08 */	stfs f0, 8(r3)
/* 804FB10C  4E 80 00 20 */	blr 
