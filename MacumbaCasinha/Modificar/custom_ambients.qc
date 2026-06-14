void() ambient_generic =
{
    string snd = self.noise != "" ? self.noise : "ambience/sextaserie_loop.wav";

    precache_sound(snd);

    ambientsound(self.origin, snd,
                 self.volume ? self.volume : 0.4,
                 ATTN_STATIC);

    remove(self);
};


// exemple

// // ================================================
// // AMBIENT BAIL E FUNK - LibreQuake / Custom Mod
// // ================================================

// /*QUAKED ambient_bailefunk (0.8 0.4 0.2) (-8 -8 -8) (8 8 8)
// Baile funk carioca - multidão, batidão, favela party
// "noise"     "ambience/bailefunk_loop.wav"
// "volume"    "0.4"
// */
// void() ambient_bailefunk =
// {
    // string snd = self.noise != "" ? self.noise : "ambience/bailefunk_loop.wav";

    // precache_sound(snd);

    // ambientsound(self.origin, snd,
                 // self.volume ? self.volume : 1.0,
                 // ATTN_STATIC);

    // remove(self);
// };